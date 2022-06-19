.class public Lcom/mopub/common/privacy/PersonalInfoManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/PersonalInfoManager$g;,
        Lcom/mopub/common/privacy/PersonalInfoManager$h;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/privacy/ConsentStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ldg1;

.field public final d:Lcom/mopub/common/privacy/ConsentDialogController;

.field public final e:Lcom/mopub/mobileads/MoPubConversionTracker;

.field public final f:Lcom/mopub/common/privacy/SyncRequest$Listener;

.field public g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

.field public h:Lcom/mopub/common/SdkInitializationListener;

.field public i:J

.field public j:Ljava/lang/Long;

.field public k:Lcom/mopub/common/privacy/ConsentStatus;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$h;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$a;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->f:Lcom/mopub/common/privacy/SyncRequest$Listener;

    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$g;

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$g;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$a;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    invoke-static {v0}, Lcom/mopub/network/MultiAdResponse;->setServerOverrideListener(Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;)V

    new-instance v0, Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-direct {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    new-instance v0, Ldg1;

    invoke-direct {v0, p1}, Ldg1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ldg1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ldg1;->n(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ldg1;->o(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldg1;->K()V

    :cond_0
    new-instance p2, Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {p2, p1}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    new-instance p2, Lcom/mopub/common/privacy/PersonalInfoManager$a;

    invoke-direct {p2, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$a;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    iput-object p3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/MoPubIdentifier;->setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->t()Lcom/mopub/common/SdkInitializationListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/MoPubIdentifier;->j(Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/common/privacy/PersonalInfoManager;->u(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static synthetic c(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    return p0
.end method

.method public static synthetic e(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    return p1
.end method

.method public static synthetic f(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->q(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void
.end method

.method public static synthetic g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    return-object p0
.end method

.method public static synthetic h(Lcom/mopub/common/privacy/PersonalInfoManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic i(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    return p0
.end method

.method public static synthetic j(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    return p1
.end method

.method public static synthetic k(Lcom/mopub/common/privacy/PersonalInfoManager;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic l(Lcom/mopub/common/privacy/PersonalInfoManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    return-wide v0
.end method

.method public static synthetic m(Lcom/mopub/common/privacy/PersonalInfoManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    return-wide p1
.end method

.method public static synthetic n(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method

.method public static synthetic o(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    return-object p1
.end method

.method public static synthetic p(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    return p1
.end method

.method public static w(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    return p0

    :cond_3
    if-eqz p7, :cond_4

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    if-nez p3, :cond_5

    return p0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    sub-long/2addr p1, p6

    cmp-long p3, p1, p4

    if-lez p3, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static x(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;)Z
    .locals 3

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canCollectPersonalInformation()Z
    .locals 4

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public forceGdprApplies()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ldg1;->B(Z)V

    iput-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1}, Ldg1;->K()V

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->u(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public gdprApplies()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->g()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConsentData()Lcom/mopub/common/privacy/ConsentData;
    .locals 2

    new-instance v0, Ldg1;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldg1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    return-object v0
.end method

.method public grantConsent()V
    .locals 5

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot grant consent because Do Not Track is on."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->q(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public isConsentDialogReady()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->a()Z

    move-result v0

    return v0
.end method

.method public loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;)V
    .locals 3

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/ManifestUtils;->checkGdprActivitiesDeclared(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$b;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$b;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$c;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$c;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1, p1, v0, v2}, Lcom/mopub/common/privacy/ConsentDialogController;->b(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Ldg1;)V

    return-void
.end method

.method public final q(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0

    invoke-virtual {p2}, Lcom/mopub/common/privacy/ConsentChangeReason;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->r(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public r(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1}, Ldg1;->I()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consent status is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Not doing a state transition."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldg1;->E(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1, p2}, Ldg1;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1, p1}, Ldg1;->q(Lcom/mopub/common/privacy/ConsentStatus;)V

    invoke-static {v0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->x(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1}, Ldg1;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldg1;->s(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1}, Ldg1;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldg1;->u(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1}, Ldg1;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldg1;->t(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldg1;->s(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v4, v5}, Ldg1;->u(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v4, v5}, Ldg1;->t(Ljava/lang/String;)V

    :cond_3
    sget-object v4, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    iget-object v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/common/privacy/AdvertisingId;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldg1;->D(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1, v0}, Ldg1;->r(Lcom/mopub/common/privacy/ConsentStatus;)V

    :cond_5
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1, v3}, Ldg1;->G(Z)V

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v1}, Ldg1;->K()V

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/ClientMetadata;->repopulateCountryData()V

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubConversionTracker;->shouldTrack()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    :cond_6
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    aput-object p2, v5, v2

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->u(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method public requestSync(Z)V
    .locals 9

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    iget-wide v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v8

    move v3, p1

    invoke-static/range {v1 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager;->w(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->v()V

    return-void
.end method

.method public revokeConsent()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot revoke consent because Do Not Track is on."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->q(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public s(Lcom/mopub/common/privacy/ConsentStatus;)V
    .locals 5

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/common/privacy/PersonalInfoManager$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid consent status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". This is a bug with the use of changeConsentStateFromDialog."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->q(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :goto_1
    return-void
.end method

.method public setAllowLegitimateInterest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->o:Z

    return-void
.end method

.method public shouldAllowLegitimateInterest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->o:Z

    return v0
.end method

.method public shouldShowConsentDialog()Z
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public showConsentDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->d()Z

    move-result v0

    return v0
.end method

.method public subscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t()Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$e;

    invoke-direct {v0, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$e;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-object v0
.end method

.method public final u(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .locals 10

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/mopub/common/privacy/ConsentStatusChangeListener;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/mopub/common/privacy/PersonalInfoManager$d;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager$d;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatusChangeListener;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unsubscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public v()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v0}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    new-instance v1, Lcom/mopub/common/privacy/SyncUrlGenerator;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v2}, Ldg1;->chooseAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedIfa(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->j()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->getExtras()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Ldg1;

    invoke-virtual {v3}, Ldg1;->isForceGdprApplies()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;

    iget-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    :cond_0
    new-instance v0, Lcom/mopub/common/privacy/SyncRequest;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    sget-object v3, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->f:Lcom/mopub/common/privacy/SyncRequest$Listener;

    invoke-direct {v0, v2, v1, v3}, Lcom/mopub/common/privacy/SyncRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/SyncRequest$Listener;)V

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method
