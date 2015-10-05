﻿CREATE TABLE [dbo].[Operations]
(
	[OperationId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[OperationDate] DATETIME2 NOT NULL DEFAULT GETDATE(),
	[CreditId] hierarchyid NOT NULL REFERENCES Accounts(AccountId),
	[DebitId] hierarchyid NOT NULL REFERENCES Accounts(AccountId),
	[Summ] money not null,
	[Note] nvarchar(200) 

)
