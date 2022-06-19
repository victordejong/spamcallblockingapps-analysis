.class public Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "org.telegram.messenger/org.telegram.ui.LaunchActivity"

    const v1, 0x7f080389

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "tl"

    return-object v0
.end method

.method public getImColor()I
    .locals 1

    const v0, 0x7f0601e8

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "org.telegram.messenger"

    return-object v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->TELEGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 33
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasTelegramAccount()Z

    move-result p1

    return p1
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 7

    .line 48
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 49
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;

    const-string v2, "Telegram"

    invoke-direct {v1, p2, v2}, Lcom/callapp/contacts/popup/ExternalComAddContactFirstPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void

    :cond_0
    const-string v0, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.profile"

    .line 55
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v2, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 56
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v3, "="

    invoke-virtual {v1, v2, v3, p2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p2

    const-string v1, "mimetype"

    .line 57
    invoke-virtual {p2, v1, v3, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper$1;-><init>(Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;)V

    const/4 v2, 0x0

    .line 1185
    invoke-virtual {p2, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 57
    check-cast p2, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 66
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-static {p1, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 79
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "org.telegram.messenger/org.telegram.ui.LaunchActivity"

    .line 80
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method
