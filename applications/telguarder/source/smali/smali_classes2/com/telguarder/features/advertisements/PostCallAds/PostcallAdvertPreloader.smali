.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.super Ljava/lang/Object;
.source "PostcallAdvertPreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;
    }
.end annotation


# instance fields
.field private mExpiredAdHandler:Ljava/util/concurrent/ScheduledExecutorService;

.field public mExpiredAdRunnable:Ljava/lang/Runnable;

.field private mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

.field private mTimeoutHandler:Ljava/util/concurrent/ScheduledExecutorService;

.field public mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    .line 19
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutHandler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdHandler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private setExpiredAdHandler()V
    .locals 5

    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelExpiredAdHandler(Ljava/lang/Boolean;)V

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdHandler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$nQwuxsimowzpQd9bKa8Wxe_A-gg;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$nQwuxsimowzpQd9bKa8Wxe_A-gg;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2d

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private setPreloadTimeoutHandler()V
    .locals 5

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelPreloadTimeoutHandler(Ljava/lang/Boolean;)V

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutHandler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$CqPLCLHmX9XIAvlFgHdGoMw5Bzo;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$CqPLCLHmX9XIAvlFgHdGoMw5Bzo;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public cancelAllPreloadTimeoutHandlers()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelPreloadTimeoutHandler()V

    .line 120
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelExpiredAdHandler()V

    return-void
.end method

.method public cancelExpiredAdHandler()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelExpiredAdHandler(Ljava/lang/Boolean;)V

    return-void
.end method

.method public cancelExpiredAdHandler(Ljava/lang/Boolean;)V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdHandler:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 109
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdHandler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public cancelPreloadTimeoutHandler()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelPreloadTimeoutHandler(Ljava/lang/Boolean;)V

    return-void
.end method

.method public cancelPreloadTimeoutHandler(Ljava/lang/Boolean;)V
    .locals 2

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutHandler:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 74
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutHandler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    return-object v0
.end method

.method public synthetic lambda$null$0$PostcallAdvertPreloader()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutHandler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelPreloadTimeoutHandler()V

    return-void
.end method

.method public synthetic lambda$null$2$PostcallAdvertPreloader()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdHandler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "\n"

    .line 90
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const-string v0, " PRELOAD REFRESH\n"

    .line 91
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelExpiredAdHandler()V

    return-void
.end method

.method public synthetic lambda$setExpiredAdHandler$3$PostcallAdvertPreloader()V
    .locals 2

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$pSj-YN5icxxEdYFDwAhIcVtZKGA;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$pSj-YN5icxxEdYFDwAhIcVtZKGA;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$setPreloadTimeoutHandler$1$PostcallAdvertPreloader()V
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$lCWoantW3zpAP8XnBkcObGdhS_0;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertPreloader$lCWoantW3zpAP8XnBkcObGdhS_0;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    .line 37
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelAllPreloadTimeoutHandlers()V

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    if-ne p1, v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->setPreloadTimeoutHandler()V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->mState:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    if-ne p1, v0, :cond_2

    .line 44
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->setExpiredAdHandler()V

    .line 45
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelPreloadTimeoutHandler()V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;->cancelAllPreloadTimeoutHandlers()V

    :goto_0
    return-void
.end method
