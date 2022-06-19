.class public Lcom/telguarder/features/sharing/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPostalAddressToIntentIfNeeded(Lcom/telguarder/features/sharing/Shareable;Landroid/content/Intent;)V
    .locals 1

    .line 39
    invoke-interface {p0}, Lcom/telguarder/features/sharing/Shareable;->getShareableAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p0}, Lcom/telguarder/features/sharing/Shareable;->getShareableAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "postal"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x3

    const-string v0, "postal_type"

    .line 41
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static addWebsiteToIntentIfNeeded(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/website"

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data1"

    .line 53
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data3"

    const-string v2, "From telGuarder"

    .line 54
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "data2"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "data"

    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method public static startContactsAppWithShareable(Landroid/app/Activity;Lcom/telguarder/features/sharing/Shareable;)V
    .locals 3

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableEmailAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "email_type"

    const/4 v2, 0x2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareablePhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    const/4 v2, 0x3

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    invoke-static {p1, v0}, Lcom/telguarder/features/sharing/ShareHelper;->addPostalAddressToIntentIfNeeded(Lcom/telguarder/features/sharing/Shareable;Landroid/content/Intent;)V

    .line 26
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/sharing/ShareHelper;->addWebsiteToIntentIfNeeded(Landroid/content/Intent;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableCompanyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "company"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :cond_0
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableRole()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareableRole()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/telguarder/features/sharing/Shareable;->getShareablePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAddToContactsAction(Ljava/lang/String;)V

    return-void
.end method
