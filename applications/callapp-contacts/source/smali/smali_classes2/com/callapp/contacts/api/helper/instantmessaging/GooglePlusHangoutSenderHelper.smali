.class public Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f080384

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getImColor()I
    .locals 1

    const v0, 0x7f060109

    return v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->GOOGLE_PLUS_HANGOUT:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 25
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasGooglePlusHangoutAccount()Z

    move-result p1

    return p1
.end method

.method public isAppInstalled()Z
    .locals 3

    .line 35
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x4d2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 4

    .line 49
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 50
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlusHangoutDataId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;

    const-string v2, "Hangout"

    invoke-direct {v1, p2, v2}, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void
.end method
