.class public Lcom/callapp/contacts/model/objectbox/SingleSmsData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_SMS_TEXT:Ljava/lang/String; = "smsText"


# instance fields
.field private contactId:J

.field private fullName:Ljava/lang/String;

.field protected id:J

.field private lastText:Ljava/lang/String;

.field private pagePosition:I

.field private phone:Ljava/lang/String;

.field private smsText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->contactId:J

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->lastText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->contactId:J

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->lastText:Ljava/lang/String;

    .line 31
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->id:J

    .line 32
    iput-wide p3, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->contactId:J

    .line 33
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->smsText:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->phone:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->fullName:Ljava/lang/String;

    .line 36
    iput p8, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->pagePosition:I

    .line 37
    iput-object p9, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->lastText:Ljava/lang/String;

    return-void
.end method

.method public static createFromIntent(Landroid/content/Intent;)Lcom/callapp/contacts/model/objectbox/SingleSmsData;
    .locals 4

    .line 102
    new-instance v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;-><init>()V

    .line 104
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "smsText"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->setSmsText(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->setPhone(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "contactId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->setContactId(J)V

    const-string v1, "fullName"

    .line 107
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->setFullName(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->contactId:J

    return-wide v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->id:J

    return-wide v0
.end method

.method public getLastText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->lastText:Ljava/lang/String;

    return-object v0
.end method

.method public getPagePosition()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->pagePosition:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsText()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->smsText:Ljava/lang/String;

    return-object v0
.end method

.method public setContactId(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->contactId:J

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->id:J

    return-void
.end method

.method public setLastText(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->lastText:Ljava/lang/String;

    return-void
.end method

.method public setPagePosition(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->pagePosition:I

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSmsText(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->smsText:Ljava/lang/String;

    return-void
.end method
