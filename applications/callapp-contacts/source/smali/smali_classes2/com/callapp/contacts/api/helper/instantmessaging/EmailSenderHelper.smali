.class public Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f080383

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 94
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasVisibleEmails()Z

    move-result p1

    return p1
.end method

.method public getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "em"

    return-object v0
.end method

.method public getImColor()I
    .locals 1

    const v0, 0x7f0600f7

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gm"

    return-object v0
.end method

.method public getShareReferTexBody()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f1205b4

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const p1, 0x7f1205b5

    .line 74
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->EMAIL:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAppInstalled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 28
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 29
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/action/local/EmailAction;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/action/local/EmailAction;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/action/local/EmailAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V
    .locals 4

    .line 45
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/image"

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.intent.extra.EMAIL"

    .line 55
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ""

    .line 58
    invoke-virtual {p0, v2, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;->getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;->getShareReferTexBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->getActivityResult()Lcom/callapp/contacts/manager/popup/ActivityResult;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
