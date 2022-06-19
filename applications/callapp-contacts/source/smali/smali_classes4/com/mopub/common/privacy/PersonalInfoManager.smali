.class public Lcom/mopub/common/privacy/PersonalInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/PersonalInfoManager$a;,
        Lcom/mopub/common/privacy/PersonalInfoManager$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/privacy/ConsentStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/mopub/common/privacy/b;

.field private final d:Lcom/mopub/common/privacy/ConsentDialogController;

.field private final e:Lcom/mopub/mobileads/MoPubConversionTracker;

.field private final f:Lcom/mopub/common/privacy/SyncRequest$Listener;

.field private g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

.field private h:Lcom/mopub/common/SdkInitializationListener;

.field private i:J

.field private j:Ljava/lang/Long;

.field private k:Lcom/mopub/common/privacy/ConsentStatus;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    .line 65
    iput-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    .line 75
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    .line 81
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$b;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->f:Lcom/mopub/common/privacy/SyncRequest$Listener;

    .line 82
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$a;

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$a;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    .line 83
    invoke-static {v0}, Lcom/mopub/network/MultiAdResponse;->setServerOverrideListener(Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;)V

    .line 85
    new-instance v0, Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-direct {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 87
    new-instance v0, Lcom/mopub/common/privacy/b;

    invoke-direct {v0, p1}, Lcom/mopub/common/privacy/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    iget-object v1, v0, Lcom/mopub/common/privacy/b;->b:Ljava/lang/String;

    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 2200
    iput-object v1, v0, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 2209
    iput-object p2, v0, Lcom/mopub/common/privacy/b;->b:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/mopub/common/privacy/b;->a()V

    .line 95
    :cond_0
    new-instance p2, Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {p2, p1}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    .line 97
    new-instance p2, Lcom/mopub/common/privacy/PersonalInfoManager$1;

    invoke-direct {p2, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$1;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    .line 136
    iput-object p3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    .line 138
    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/MoPubIdentifier;->setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    .line 2605
    new-instance p2, Lcom/mopub/common/privacy/PersonalInfoManager$5;

    invoke-direct {p2, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$5;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    .line 3189
    iput-object p2, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Lcom/mopub/common/SdkInitializationListener;

    .line 3190
    iget-boolean p2, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->c:Z

    if-eqz p2, :cond_1

    .line 3191
    invoke-virtual {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->a()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mopub/common/privacy/PersonalInfoManager;J)J
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    return-object p0
.end method

.method private a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .locals 10

    .line 591
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    monitor-enter v0

    .line 592
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

    .line 593
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/mopub/common/privacy/PersonalInfoManager$4;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager$4;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatusChangeListener;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 601
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

.method static synthetic a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method private static a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;)Z
    .locals 2

    .line 574
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 577
    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 581
    :cond_1
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, p0}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    .line 582
    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    return p1
.end method

.method static a(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-nez p1, :cond_1

    return p0

    .line 403
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

    .line 409
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    if-nez p3, :cond_5

    return p0

    .line 415
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    sub-long/2addr p1, p6

    cmp-long p3, p1, p4

    if-lez p3, :cond_6

    return p0

    :cond_6
    return v0
.end method

.method static synthetic b(Lcom/mopub/common/privacy/PersonalInfoManager;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    return p0
.end method

.method static synthetic d(Lcom/mopub/common/privacy/PersonalInfoManager;)Ljava/lang/Long;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/common/privacy/PersonalInfoManager;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->h:Lcom/mopub/common/SdkInitializationListener;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method static synthetic i(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->g:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    return-object p0
.end method

.method static synthetic j(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    return p0
.end method

.method static synthetic k(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    return v0
.end method

.method static synthetic l(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 446
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 10224
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 448
    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    .line 452
    new-instance v1, Lcom/mopub/common/privacy/SyncUrlGenerator;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->k:Lcom/mopub/common/privacy/ConsentStatus;

    .line 453
    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    invoke-virtual {v2}, Lcom/mopub/common/privacy/b;->chooseAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 10400
    iget-object v3, v3, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    .line 455
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedIfa(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 10409
    iget-object v3, v3, Lcom/mopub/common/privacy/b;->h:Ljava/lang/String;

    .line 456
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 11233
    iget-object v3, v3, Lcom/mopub/common/privacy/b;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 457
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 11365
    iget-object v3, v3, Lcom/mopub/common/privacy/b;->e:Ljava/lang/String;

    .line 458
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 459
    invoke-virtual {v3}, Lcom/mopub/common/privacy/b;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 461
    invoke-virtual {v3}, Lcom/mopub/common/privacy/b;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 12315
    iget-object v3, v3, Lcom/mopub/common/privacy/b;->p:Ljava/lang/String;

    .line 462
    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 463
    invoke-virtual {v3}, Lcom/mopub/common/privacy/b;->getExtras()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    .line 464
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 465
    invoke-virtual {v3}, Lcom/mopub/common/privacy/b;->isForceGdprApplies()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 466
    iget-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    if-eqz v2, :cond_0

    .line 467
    iput-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->n:Z

    .line 468
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 471
    :cond_0
    new-instance v0, Lcom/mopub/common/privacy/SyncRequest;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    sget-object v3, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v3}, Lcom/mopub/common/privacy/SyncUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->f:Lcom/mopub/common/privacy/SyncRequest$Listener;

    invoke-direct {v0, v2, v1, v3}, Lcom/mopub/common/privacy/SyncRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/SyncRequest$Listener;)V

    .line 474
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/network/MoPubRequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method final a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0

    .line 496
    invoke-virtual {p2}, Lcom/mopub/common/privacy/ConsentChangeReason;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V
    .locals 7

    .line 508
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 13224
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 512
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 13373
    iget-boolean v1, v1, Lcom/mopub/common/privacy/b;->t:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 512
    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consent status is already "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Not doing a state transition."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13413
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->h:Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 14369
    iput-object p2, v1, Lcom/mopub/common/privacy/b;->e:Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 15228
    iput-object p1, v1, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 523
    invoke-static {v0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 525
    invoke-virtual {v1}, Lcom/mopub/common/privacy/b;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v4

    .line 15340
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->r:Ljava/lang/String;

    .line 526
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 527
    invoke-virtual {v1}, Lcom/mopub/common/privacy/b;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v4

    .line 16329
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->q:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 529
    invoke-virtual {v1}, Lcom/mopub/common/privacy/b;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v4

    .line 16351
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->s:Ljava/lang/String;

    .line 532
    :cond_1
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 533
    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    const/4 v4, 0x0

    .line 17340
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->r:Ljava/lang/String;

    .line 535
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 18329
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->q:Ljava/lang/String;

    .line 536
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 18351
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->s:Ljava/lang/String;

    .line 539
    :cond_3
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 540
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v4

    .line 541
    invoke-virtual {v4}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v4

    .line 19088
    iget-object v4, v4, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    .line 19404
    iput-object v4, v1, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    .line 544
    :cond_4
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v1, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 19422
    iput-object v0, v1, Lcom/mopub/common/privacy/b;->i:Lcom/mopub/common/privacy/ConsentStatus;

    .line 547
    :cond_5
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 20377
    iput-boolean v3, v1, Lcom/mopub/common/privacy/b;->t:Z

    .line 548
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/b;->a()V

    .line 550
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 552
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/ClientMetadata;->repopulateCountryData()V

    .line 553
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubConversionTracker;->shouldTrack()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 554
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->e:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    .line 558
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

    .line 560
    invoke-direct {p0, v0, p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    return-void
.end method

.method public canCollectPersonalInformation()Z
    .locals 4

    .line 232
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v3}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    .line 246
    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public forceGdprApplies()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/b;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    const/4 v2, 0x1

    .line 6395
    iput-boolean v2, v1, Lcom/mopub/common/privacy/b;->f:Z

    .line 293
    iput-boolean v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->m:Z

    .line 294
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/b;->a()V

    .line 295
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 7224
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 297
    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 8224
    iget-object v3, v3, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 297
    invoke-direct {p0, v0, v3, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    .line 300
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public gdprApplies()Ljava/lang/Boolean;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/b;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 6382
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->u:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConsentData()Lcom/mopub/common/privacy/ConsentData;
    .locals 2

    .line 484
    new-instance v0, Lcom/mopub/common/privacy/b;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/common/privacy/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 9224
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method

.method public grantConsent()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot grant consent because Do Not Track is on."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 9242
    iget-boolean v0, v0, Lcom/mopub/common/privacy/b;->j:Z

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    goto :goto_0

    .line 329
    :cond_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 334
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public isConsentDialogReady()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 5143
    iget-boolean v0, v0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    return v0
.end method

.method public loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;)V
    .locals 3

    .line 180
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/ManifestUtils;->checkGdprActivitiesDeclared(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$2;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$3;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    invoke-virtual {v1, p1, v0, v2}, Lcom/mopub/common/privacy/ConsentDialogController;->a(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Lcom/mopub/common/privacy/b;)V

    return-void
.end method

.method public requestSync(Z)V
    .locals 9

    .line 425
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 431
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->l:Z

    .line 432
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->j:Ljava/lang/Long;

    iget-wide v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->i:J

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 9400
    iget-object v7, v3, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    .line 437
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v8

    move v3, p1

    .line 431
    invoke-static/range {v1 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a()V

    return-void
.end method

.method public revokeConsent()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot revoke consent because Do Not Track is on."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {p0, v0, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 348
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public setAllowLegitimateInterest(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->o:Z

    return-void
.end method

.method public shouldAllowLegitimateInterest()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->o:Z

    return v0
.end method

.method public shouldShowConsentDialog()Z
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 3373
    iget-boolean v0, v0, Lcom/mopub/common/privacy/b;->t:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->c:Lcom/mopub/common/privacy/b;

    .line 4224
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 160
    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public showConsentDialog()Z
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->d:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 6129
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 6130
    iget-boolean v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6136
    :cond_0
    iput-boolean v2, v0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    .line 6137
    iget-object v1, v0, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mopub/common/privacy/ConsentDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 6138
    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->a()V

    return v3

    .line 6131
    :cond_1
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v2
.end method

.method public subscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
