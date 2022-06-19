.class public Lcom/telguarder/features/userConsentHandling/UserConsentManager;
.super Ljava/lang/Object;
.source "UserConsentManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/userConsentHandling/UserConsentManager;


# instance fields
.field private onPrivacyPolicyConsentApproved:Ljava/lang/Runnable;

.field private onPrivacyPolicyConsentCanceled:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/userConsentHandling/UserConsentManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->mInstance:Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    invoke-direct {v1}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->mInstance:Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    .line 27
    :cond_0
    sget-object v1, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->mInstance:Lcom/telguarder/features/userConsentHandling/UserConsentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public askForNumberLookupUserConsent(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->askForNumberLookupUserConsentActivity(Landroid/content/Context;)V

    return-void
.end method

.method public askForNumberLookupUserConsentActivity(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v0}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->askForNumberLookupUserConsentActivity(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public askForNumberLookupUserConsentActivity(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 50
    iput-object p2, p0, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onPrivacyPolicyConsentApproved:Ljava/lang/Runnable;

    .line 51
    iput-object p3, p0, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onPrivacyPolicyConsentCanceled:Ljava/lang/Runnable;

    .line 52
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-class p3, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 53
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onNumberLookupConsentDismiss(Landroid/content/Context;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupNumberLookupAction(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 83
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onPrivacyPolicyConsentCanceled:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onNumberLookupConsentNo(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupNumberLookupAction(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 75
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onPrivacyPolicyConsentCanceled:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onNumberLookupConsentYes(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupNumberLookupAction(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 66
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveUserConsentForPolicy2018(Z)V

    .line 67
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onPrivacyPolicyConsentApproved:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public showNumberLookupUserConsentIfNeeded(Landroid/content/Context;)Z
    .locals 1

    .line 36
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->askForNumberLookupUserConsentActivity(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
