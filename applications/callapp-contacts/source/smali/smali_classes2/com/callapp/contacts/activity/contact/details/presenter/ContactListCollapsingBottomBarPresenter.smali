.class public Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;
.implements Lcom/callapp/contacts/event/listener/DestroyListener;
.implements Lcom/callapp/contacts/event/listener/ResumeListener;


# static fields
.field public static a:Ljava/lang/String; = "SHOW_DIALOG_EXTRA_WHEN_ENTER_MARKET_PLACE"


# instance fields
.field private final c:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

.field private g:Z

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;-><init>()V

    const-string v0, "Bottom bar button clicked:"

    .line 60
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 65
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->h:I

    const/4 v0, 0x7

    .line 66
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->i:I

    return-void
.end method

.method private static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 270
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 271
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 257
    const-class v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    sget-object v5, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$csfd0RZaWf8PKJ3Y2lCRvDu-5dQ;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$csfd0RZaWf8PKJ3Y2lCRvDu-5dQ;

    const/4 v1, 0x0

    const-string v2, "Contact List"

    const-string v3, "Bottom bar button clicked:CallApp Plus"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V
    .locals 1

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 299
    :cond_0
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 301
    invoke-static {p2, p3}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 304
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V
    .locals 0

    .line 57
    invoke-static/range {p1 .. p6}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    return-object p0
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 8

    .line 1249
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Insights"

    const-string v2, "ClickInsightsBottomBar"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1251
    const-class v6, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    const/4 v3, 0x0

    const-string v4, "Contact List"

    const-string v5, "Bottom bar button clicked:Insight"

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->c()V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 309
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 171
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eA:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v0, p1, :cond_1

    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->eh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->g:Z

    return p1
.end method

.method private synthetic c(Landroid/content/Context;)V
    .locals 1

    .line 194
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/app/Activity;)V

    const-string p1, "Contact List"

    const-string v0, "Bottom bar button clicked:Call Recording"

    .line 195
    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic d()V
    .locals 2

    .line 258
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Landroid/content/Context;)V
    .locals 6

    .line 120
    const-class v4, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;

    sget-object v5, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$Or65NpdoiG-6UO-qC31H9WG-wTI;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$Or65NpdoiG-6UO-qC31H9WG-wTI;

    const/4 v1, 0x0

    const-string v2, "Contact List"

    const-string v3, "Bottom bar button clicked:Blocked Numbers"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic e(Landroid/content/Context;)V
    .locals 6

    .line 88
    instance-of v0, p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.READ_SMS"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 89
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bI:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$HP9mfA3BRpg34u4Aaa8INUJ_f_4;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$HP9mfA3BRpg34u4Aaa8INUJ_f_4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$3kKybzN9gXRX78oajlLiJB9L2nM;

    invoke-direct {v3, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$3kKybzN9gXRX78oajlLiJB9L2nM;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v4, 0x0

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, p1, v4

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bI:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 102
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus"

    const-string v1, "ClickCallAppPlus"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e()Z
    .locals 7

    .line 1234
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1235
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1236
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gH:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return v2

    .line 1238
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gH:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1239
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gH:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return v2

    .line 1241
    :cond_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gH:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    .line 1242
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gH:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic f(Landroid/content/Context;)V
    .locals 3

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "SMS from CallApp+ - Permission not granted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic f()Z
    .locals 1

    .line 198
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ej:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 199
    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Lcom/callapp/contacts/manager/preferences/prefs/DatePref;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic g(Landroid/content/Context;)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "SMS from CallApp+ - Permission granted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic g()Z
    .locals 5

    .line 176
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->an:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 177
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNotNull()Z

    move-result v0

    const-wide/16 v1, 0x7

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->an:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 178
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->an:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 179
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 180
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ea:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 181
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic h()Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ek:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic i()Z
    .locals 1

    .line 123
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ek:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic j()V
    .locals 2

    .line 121
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ek:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic k()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic l()Z
    .locals 1

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$0O8tzLi-gaufsCanOnZaxcI0_5A()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->i()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$2NN2wIcVWrCAzljaEbunmKBRk6w(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    return-void
.end method

.method public static synthetic lambda$3kKybzN9gXRX78oajlLiJB9L2nM(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$EQKzuGDMSC5eCkQew4jtIPlCMwo()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->l()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$HP9mfA3BRpg34u4Aaa8INUJ_f_4(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$JBirYSa9nIBMBOpZq9MvS_x5FZ4(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$Jem6hg8ZMSwOPoNc9-TYVuAqPIs()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$JpkkWsWf7-JkGt1Im6ko7XVI-j4(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$NsmEXyiuz_e_2asQwihXNrGi_fY(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Or65NpdoiG-6UO-qC31H9WG-wTI()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->j()V

    return-void
.end method

.method public static synthetic lambda$V9AiEQJFs_65VN3W0gDFb5-gZlQ(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$Z_HffcOhrhRAjLGwnCVTaoU7lu8()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$csfd0RZaWf8PKJ3Y2lCRvDu-5dQ()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->d()V

    return-void
.end method

.method public static synthetic lambda$dhUWdILMKg2D6WH9UXaXuuaEDb0(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$dnlPzl5npM7Ws_MywPnSxIylr34(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->e()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$i4KkQfeZ-2b2l-Yx2_ez6-TTwbk(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$k2uOrd7_380sTYpn20zTINgq2IA(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->a()V

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->e()V

    :cond_0
    return-void
.end method

.method public a(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    .line 286
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$2NN2wIcVWrCAzljaEbunmKBRk6w;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$2NN2wIcVWrCAzljaEbunmKBRk6w;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 12

    .line 71
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addResumeListener(Lcom/callapp/contacts/event/listener/ResumeListener;)V

    .line 74
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->e:Ljava/util/HashMap;

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const v1, 0x7f0a0144

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    .line 80
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v0

    const v10, 0x7f060053

    if-eqz v0, :cond_0

    .line 81
    new-instance v11, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    const v2, 0x7f0802ec

    const v0, 0x7f12056f

    .line 84
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b:I

    int-to-float v5, v0

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$JBirYSa9nIBMBOpZq9MvS_x5FZ4;

    invoke-direct {v6, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$JBirYSa9nIBMBOpZq9MvS_x5FZ4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController;

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$EQKzuGDMSC5eCkQew4jtIPlCMwo;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$EQKzuGDMSC5eCkQew4jtIPlCMwo;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$i4KkQfeZ-2b2l-Yx2_ez6-TTwbk;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$i4KkQfeZ-2b2l-Yx2_ez6-TTwbk;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)V

    invoke-direct {v7, p1, v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;)V

    sget-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;-><init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    .line 110
    invoke-virtual {v11}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "BtnBottomBarCallAppPlus"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0, v11}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    .line 114
    :cond_0
    new-instance v11, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    const v2, 0x7f0802eb

    const v0, 0x7f120078

    .line 117
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0601db

    .line 118
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b:I

    int-to-float v5, v0

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$JpkkWsWf7-JkGt1Im6ko7XVI-j4;

    invoke-direct {v6, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$JpkkWsWf7-JkGt1Im6ko7XVI-j4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController;

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$0O8tzLi-gaufsCanOnZaxcI0_5A;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$0O8tzLi-gaufsCanOnZaxcI0_5A;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$NsmEXyiuz_e_2asQwihXNrGi_fY;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$NsmEXyiuz_e_2asQwihXNrGi_fY;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)V

    invoke-direct {v7, p1, v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;)V

    sget-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SPAM_CALL_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;-><init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    .line 126
    invoke-virtual {v11}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "BtnBottomBarBlockedNumbers"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0, v11}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    .line 129
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "PromotionVersion"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 133
    :goto_0
    new-instance v11, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    const v2, 0x7f0802ee

    const v1, 0x7f120687

    .line 136
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f06012b

    .line 137
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b:I

    int-to-float v5, v1

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;Ljava/lang/Integer;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$k2uOrd7_380sTYpn20zTINgq2IA;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$k2uOrd7_380sTYpn20zTINgq2IA;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Ljava/lang/Integer;)V

    invoke-direct {v7, p1, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;)V

    sget-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->MARKET_ITEM_ADDED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;-><init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    iput-object v11, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    .line 176
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$Jem6hg8ZMSwOPoNc9-TYVuAqPIs;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$Jem6hg8ZMSwOPoNc9-TYVuAqPIs;

    invoke-virtual {v11, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->setShouldPlayAnimation(Lcom/callapp/contacts/util/Predicate;)V

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "BtnBottomBarMarket"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->f:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    .line 188
    :cond_2
    new-instance v11, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    const v2, 0x7f0802ed

    const v0, 0x7f12011b

    .line 190
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f060040

    .line 191
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b:I

    int-to-float v5, v0

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$dhUWdILMKg2D6WH9UXaXuuaEDb0;

    invoke-direct {v6, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$dhUWdILMKg2D6WH9UXaXuuaEDb0;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$Z_HffcOhrhRAjLGwnCVTaoU7lu8;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$Z_HffcOhrhRAjLGwnCVTaoU7lu8;

    invoke-direct {v7, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;)V

    sget-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;-><init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    .line 201
    invoke-virtual {v11}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "BtnBottomBarCallRecording"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0, v11}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    .line 207
    new-instance v11, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    const v2, 0x7f0800ce

    const v0, 0x7f1203d0

    .line 210
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b:I

    int-to-float v5, v0

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$V9AiEQJFs_65VN3W0gDFb5-gZlQ;

    invoke-direct {v6, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$V9AiEQJFs_65VN3W0gDFb5-gZlQ;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;Landroid/content/Context;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$dnlPzl5npM7Ws_MywPnSxIylr34;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/-$$Lambda$ContactListCollapsingBottomBarPresenter$dnlPzl5npM7Ws_MywPnSxIylr34;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;)V

    invoke-direct {v7, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;)V

    sget-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->INSIGHTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;-><init>(Landroid/content/Context;ILjava/lang/String;IFLjava/lang/Runnable;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    .line 219
    invoke-virtual {v11}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string v0, "BtnBottomBarInsight"

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0, v11}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getButtonViewControllers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    .line 225
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 226
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 227
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->getDataType()Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getButtonViewControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    .line 279
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->getButtonViewControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    .line 318
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
