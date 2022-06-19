.class public Lcom/telguarder/features/userConsentHandling/TcfConsentManager;
.super Ljava/lang/Object;
.source "TcfConsentManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;


# instance fields
.field private consentInformation:Lcom/google/android/ump/ConsentInformation;

.field private mConsentForm:Lcom/google/android/ump/ConsentForm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/userConsentHandling/TcfConsentManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->mInstance:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    invoke-direct {v1}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->mInstance:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    .line 25
    :cond_0
    sget-object v1, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->mInstance:Lcom/telguarder/features/userConsentHandling/TcfConsentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$loadConsentForm$4(Ljava/lang/Runnable;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 75
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentLoadFormError()V

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$requestConsent$1(Ljava/lang/Runnable;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 42
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentInfoReqError()V

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private loadConsentForm(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 2

    .line 66
    :try_start_0
    new-instance v0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;

    invoke-direct {v0, p0, p1, p2}, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o;-><init>(Lcom/telguarder/features/userConsentHandling/TcfConsentManager;Landroid/app/Activity;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$MKfG5xUBLFDzsDzfJEHlmioWLCo;

    invoke-direct {v1, p2}, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$MKfG5xUBLFDzsDzfJEHlmioWLCo;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 80
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentLoadFormException()V

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void
.end method

.method private statusString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "OBTAINED"

    return-object p1

    :cond_1
    const-string p1, "REQUIRED"

    return-object p1

    :cond_2
    const-string p1, "NOT_REQUIRED"

    return-object p1

    :cond_3
    const-string p1, "UNKNOWN"

    return-object p1
.end method


# virtual methods
.method public synthetic lambda$loadConsentForm$3$TcfConsentManager(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/google/android/ump/ConsentForm;)V
    .locals 2

    .line 67
    iput-object p3, p0, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->mConsentForm:Lcom/google/android/ump/ConsentForm;

    .line 68
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v1}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->statusString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentStatus(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    new-instance v0, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;

    invoke-direct {v0, p0, p1, p2}, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA;-><init>(Lcom/telguarder/features/userConsentHandling/TcfConsentManager;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1, v0}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 72
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$null$2$TcfConsentManager(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->loadConsentForm(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$requestConsent$0$TcfConsentManager(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->isConsentFormAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentAvailable()V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->loadConsentForm(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentNotAvailable()V

    if-eqz p2, :cond_1

    .line 39
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestConsent(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4

    .line 31
    :try_start_0
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 33
    new-instance v2, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;

    invoke-direct {v2, p0, p1, p2}, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$SVY3lj5hraVy4-dnDYaZSNtvDsE;-><init>(Lcom/telguarder/features/userConsentHandling/TcfConsentManager;Landroid/app/Activity;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$d2op1fhep3ndptjTXmu2TYDFto0;

    invoke-direct {v3, p2}, Lcom/telguarder/features/userConsentHandling/-$$Lambda$TcfConsentManager$d2op1fhep3ndptjTXmu2TYDFto0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 47
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTcfConsentInfoReqException()V

    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void
.end method
