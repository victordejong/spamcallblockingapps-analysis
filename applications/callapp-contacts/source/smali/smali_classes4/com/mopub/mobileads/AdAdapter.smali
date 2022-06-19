.class public abstract Lcom/mopub/mobileads/AdAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Runnable;

.field protected b:Lcom/mopub/mobileads/BaseAd;

.field protected c:Landroid/content/Context;

.field protected d:Z

.field protected e:Lcom/mopub/mobileads/AdData;

.field protected f:Z

.field protected g:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field protected h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Z

    .line 53
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->c:Landroid/content/Context;

    .line 58
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/mopub/mobileads/AdAdapter;->e:Lcom/mopub/mobileads/AdData;

    .line 61
    new-instance p1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$MKp08V_1aJao_r7u1clA9lCFi3g;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$MKp08V_1aJao_r7u1clA9lCFi3g;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic a(Lcom/mopub/common/MoPubReward;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdCollapsed()V

    :cond_0
    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdExpanded()V

    :cond_0
    return-void
.end method

.method private synthetic i()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdPauseAutoRefresh()V

    :cond_0
    return-void
.end method

.method private synthetic j()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdResumeAutoRefresh()V

    :cond_0
    return-void
.end method

.method private synthetic k()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_1

    .line 13057
    iget-boolean v1, v0, Lcom/mopub/mobileads/BaseAd;->a:Z

    if-nez v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->b()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$5WYV-UeNxQMtaweG7RVAZwZyoU0(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->l()V

    return-void
.end method

.method public static synthetic lambda$Gc-U4n3ckl9uB0obpli1lSKPxjw(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->i()V

    return-void
.end method

.method public static synthetic lambda$IxAdBRe6pJwuPMtcpKBFsnt97Cs(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->a(Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public static synthetic lambda$MKp08V_1aJao_r7u1clA9lCFi3g(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->p()V

    return-void
.end method

.method public static synthetic lambda$McH0kM7XeRVT3-ooDN-BNyRDnj8(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public static synthetic lambda$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public static synthetic lambda$aOEidQmVxAnoAsDIzeNw5v6777E(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->j()V

    return-void
.end method

.method public static synthetic lambda$jhG8Q9yjlzkv5dJfpgTA7es-L7M(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->h()V

    return-void
.end method

.method public static synthetic lambda$l-NmE-0f-OCiww7d_4mVq6mSl_s(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->o()V

    return-void
.end method

.method public static synthetic lambda$oa28bscpc7_gtcDrtH5aAzq-4e4(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->k()V

    return-void
.end method

.method public static synthetic lambda$pdPvUfW_E6owMH5H01XrTuuUAfg(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->m()V

    return-void
.end method

.method public static synthetic lambda$r2JXauEfoPUG14Kps-rwqrH8Va0(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->n()V

    return-void
.end method

.method public static synthetic lambda$zUzWN6GWKhfXUrgcMr21wXgQ77k(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->g()V

    return-void
.end method

.method private synthetic m()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method private synthetic n()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_1

    .line 14057
    iget-boolean v1, v0, Lcom/mopub/mobileads/BaseAd;->a:Z

    if-eqz v1, :cond_3

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v1, :cond_2

    .line 218
    invoke-interface {v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_2
    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->b()V

    :cond_3
    return-void
.end method

.method private synthetic o()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method private synthetic p()V
    .locals 4

    .line 62
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AdAdapter() failed"

    aput-object v3, v1, v2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method protected final a(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V
    .locals 0

    .line 127
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    return-void
.end method

.method abstract a(Lcom/mopub/mobileads/MoPubAd;)V
.end method

.method b()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    .line 97
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Landroid/content/Context;

    .line 98
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Lcom/mopub/mobileads/AdData;

    .line 99
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 100
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Z

    return-void
.end method

.method final c()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected final e()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3057
    :cond_0
    iget-boolean v0, v0, Lcom/mopub/mobileads/BaseAd;->a:Z

    return v0
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Z

    return v0
.end method

.method public final load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V
    .locals 4

    .line 69
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 79
    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Ljava/lang/Runnable;

    .line 2111
    iget-object v2, p0, Lcom/mopub/mobileads/AdAdapter;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getTimeoutDelayMillis()I

    move-result v2

    int-to-long v2, v2

    .line 79
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :try_start_0
    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/AdAdapter;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1, v0, p0, v2}, Lcom/mopub/mobileads/BaseAd;->a(Landroid/content/Context;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;Lcom/mopub/mobileads/AdData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 86
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 87
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v0, v1

    .line 86
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 7133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$pdPvUfW_E6owMH5H01XrTuuUAfg;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$pdPvUfW_E6owMH5H01XrTuuUAfg;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdCollapsed()V
    .locals 2

    .line 12133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$zUzWN6GWKhfXUrgcMr21wXgQ77k;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$zUzWN6GWKhfXUrgcMr21wXgQ77k;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 2

    .line 10133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 9133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$oa28bscpc7_gtcDrtH5aAzq-4e4;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$oa28bscpc7_gtcDrtH5aAzq-4e4;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdExpanded()V
    .locals 2

    .line 11133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$jhG8Q9yjlzkv5dJfpgTA7es-L7M;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$jhG8Q9yjlzkv5dJfpgTA7es-L7M;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .line 188
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->f()V

    .line 196
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 8133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$5WYV-UeNxQMtaweG7RVAZwZyoU0;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$5WYV-UeNxQMtaweG7RVAZwZyoU0;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .line 172
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->f()V

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$McH0kM7XeRVT3-ooDN-BNyRDnj8;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$McH0kM7XeRVT3-ooDN-BNyRDnj8;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 3133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Z

    .line 161
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->f()V

    .line 163
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$l-NmE-0f-OCiww7d_4mVq6mSl_s;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$l-NmE-0f-OCiww7d_4mVq6mSl_s;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$Gc-U4n3ckl9uB0obpli1lSKPxjw;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$Gc-U4n3ckl9uB0obpli1lSKPxjw;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$aOEidQmVxAnoAsDIzeNw5v6777E;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$aOEidQmVxAnoAsDIzeNw5v6777E;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdShown()V
    .locals 2

    .line 6133
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$r2JXauEfoPUG14Kps-rwqrH8Va0;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$AdAdapter$r2JXauEfoPUG14Kps-rwqrH8Va0;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
