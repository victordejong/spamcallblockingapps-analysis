.class public abstract Lcom/mopub/mobileads/AdAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public c:Lcom/mopub/mobileads/BaseAd;

.field public d:Landroid/content/Context;

.field public f:Z

.field public g:Lcom/mopub/mobileads/AdData;

.field public h:Z

.field public j:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field public k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Z

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdData;

    new-instance p1, Lhg1;

    invoke-direct {p1, p0}, Lhg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic B()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdPauseAutoRefresh()V

    :cond_0
    return-void
.end method

.method private synthetic D()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdResumeAutoRefresh()V

    :cond_0
    return-void
.end method

.method private synthetic F()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->h()V

    :cond_3
    return-void
.end method

.method private synthetic h()V
    .locals 4

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

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lxg1;

    invoke-direct {v1, p0}, Lxg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic j()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdCollapsed()V

    :cond_0
    return-void
.end method

.method private synthetic n(Lcom/mopub/common/MoPubReward;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method private synthetic p()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method private synthetic r()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdExpanded()V

    :cond_0
    return-void
.end method

.method private synthetic t(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method private synthetic v()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->h()V

    :cond_1
    return-void
.end method

.method private synthetic x(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->j:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method private synthetic z()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->j:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->z()V

    return-void
.end method

.method public synthetic C()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->B()V

    return-void
.end method

.method public synthetic E()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->D()V

    return-void
.end method

.method public synthetic G()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->F()V

    return-void
.end method

.method public H(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V
    .locals 0

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    return-void
.end method

.method public abstract I(Lcom/mopub/mobileads/MoPubAd;)V
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getTimeoutDelayMillis()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdData;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->j:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->k:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Z

    return v0
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic i()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->h()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Z

    return v0
.end method

.method public synthetic k()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->j()V

    return-void
.end method

.method public final load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V
    .locals 4

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->j:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/AdAdapter;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1, v0, p0, v2}, Lcom/mopub/mobileads/BaseAd;->d(Landroid/content/Context;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;Lcom/mopub/mobileads/AdData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->l()V

    return-void
.end method

.method public synthetic o(Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->n(Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Llg1;

    invoke-direct {v1, p0}, Llg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdCollapsed()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lng1;

    invoke-direct {v1, p0}, Lng1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lfg1;

    invoke-direct {v1, p0, p1}, Lfg1;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lig1;

    invoke-direct {v1, p0}, Lig1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdExpanded()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Leg1;

    invoke-direct {v1, p0}, Leg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Log1;

    invoke-direct {v1, p0, p1}, Log1;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lqg1;

    invoke-direct {v1, p0}, Lqg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lpg1;

    invoke-direct {v1, p0, p1}, Lpg1;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Z

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Ljg1;

    invoke-direct {v1, p0}, Ljg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lkg1;

    invoke-direct {v1, p0}, Lkg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lmg1;

    invoke-direct {v1, p0}, Lmg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdShown()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Lgg1;

    invoke-direct {v1, p0}, Lgg1;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->p()V

    return-void
.end method

.method public synthetic s()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->r()V

    return-void
.end method

.method public synthetic u(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->t(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic w()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdAdapter;->v()V

    return-void
.end method

.method public synthetic y(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAdapter;->x(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
