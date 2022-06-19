.class public abstract Lcom/callapp/contacts/popup/contact/BaseContactPopup;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# instance fields
.field protected final c:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

.method static a(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/content/Intent;
    .locals 1

    const-string v0, "android.intent.action.EDIT"

    .line 58
    invoke-static {p0, v0}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    .line 63
    invoke-static {p0, v0}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 47
    new-instance p0, Landroid/content/Intent;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Landroid/content/Intent;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method protected abstract a(J)V
.end method

.method final a(JZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 85
    iget-object p3, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->deviceIdChanged:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Z)V

    return-void

    .line 92
    :cond_0
    new-instance p1, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;

    invoke-direct {p1, p0, p3}, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;-><init>(Lcom/callapp/contacts/popup/contact/BaseContactPopup;Z)V

    .line 120
    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public abstract a(Landroid/app/Activity;)V
.end method

.method final b(J)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->a(JZ)V

    return-void
.end method

.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method
