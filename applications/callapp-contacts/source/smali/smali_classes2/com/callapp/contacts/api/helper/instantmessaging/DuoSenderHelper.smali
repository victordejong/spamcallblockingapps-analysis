.class public Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.google.android.apps.tachyon/.ContactsVideoActionActivity"

    const v1, 0x7f080382

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getImColor()I
    .locals 1

    const v0, 0x7f0600f6

    return v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasDuoAccount()Z

    move-result p1

    return p1
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 40
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 41
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1057
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getImAddresses()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 1058
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONIMaddress;->getProtocol()I

    move-result v1

    const/16 v2, 0x5e4

    if-ne v1, v2, :cond_0

    .line 1059
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONIMaddress;->getIMAddress()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 44
    :goto_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "data/"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.tachyon.phone"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.google.android.apps.tachyon/.ContactsVideoActionActivity"

    .line 47
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_2
    return-void

    .line 52
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;

    const-string v2, "Duo"

    invoke-direct {v1, p2, v2}, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void
.end method
