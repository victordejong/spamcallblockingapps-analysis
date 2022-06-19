.class Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics$1;->a:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 9

    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 33
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 35
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-string v0, ""

    const-string v5, "Retention"

    const-wide/16 v6, 0x18

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    .line 36
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Store Abandonment"

    invoke-virtual {v3, v5, v4, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v3, 0x5

    cmp-long v6, v1, v3

    if-ltz v6, :cond_1

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "InActive Call Recorder"

    invoke-virtual {v3, v5, v4, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v3, 0x7

    cmp-long v6, v1, v3

    if-ltz v6, :cond_2

    .line 43
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 44
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Engaging User"

    invoke-virtual {v3, v5, v4, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 v3, 0x4

    cmp-long v6, v1, v3

    if-ltz v6, :cond_3

    .line 49
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Never Activated CallApp+"

    invoke-virtual {v1, v5, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
