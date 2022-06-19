.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/MoPubAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$b;
    }
.end annotation


# instance fields
.field public a:Lcom/mopub/mobileads/AdViewController;

.field public b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field public c:Landroid/app/Activity;

.field public volatile d:Lcom/mopub/mobileads/MoPubInterstitial$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/mopub/mobileads/factories/AdViewControllerFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)Lcom/mopub/mobileads/AdViewController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/AdViewController;->C(Z)V

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->setAdViewController(Lcom/mopub/mobileads/AdViewController;)V

    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/MoPubInterstitial;->setAdUnitId(Ljava/lang/String;)V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial$b;Z)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized b(Lcom/mopub/mobileads/MoPubInterstitial$b;Z)Z
    .locals 8
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_16

    if-eq v0, v2, :cond_f

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_0

    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v6, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    monitor-exit p0

    return v7

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v6

    :cond_2
    :try_start_3
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "No interstitial loading or loaded."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v7

    :cond_3
    :try_start_4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Attempted transition from IDLE to READY failed due to no known load call."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v7

    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->g()V

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->i()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->loadAd()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_0
    monitor-exit p0

    return v6

    :cond_7
    :try_start_6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "MoPubInterstitial destroyed. Ignoring all requests."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v7

    :cond_8
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq p1, v6, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_9

    monitor-exit p0

    return v7

    :cond_9
    if-eqz p2, :cond_a

    :try_start_8
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Cannot force refresh while showing an interstitial."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v7

    :cond_a
    :try_start_9
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return v6

    :cond_b
    :try_start_a
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return v6

    :cond_c
    :try_start_b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Already showing an interstitial. Cannot show it again."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return v7

    :cond_d
    if-nez p2, :cond_e

    :try_start_c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Interstitial already showing. Not loading another."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_e
    monitor-exit p0

    return v7

    :cond_f
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eq p1, v6, :cond_14

    if-eq p1, v5, :cond_13

    if-eq p1, v4, :cond_12

    if-eq p1, v3, :cond_10

    monitor-exit p0

    return v7

    :cond_10
    if-eqz p2, :cond_11

    :try_start_e
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return v6

    :cond_11
    monitor-exit p0

    return v7

    :cond_12
    :try_start_f
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return v6

    :cond_13
    :try_start_10
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->f()V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return v6

    :cond_14
    :try_start_11
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Interstitial already loaded. Not loading another."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_15

    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_15
    monitor-exit p0

    return v7

    :cond_16
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eq p1, v6, :cond_1c

    if-eq p1, v2, :cond_1a

    if-eq p1, v5, :cond_19

    if-eq p1, v4, :cond_18

    if-eq p1, v3, :cond_17

    monitor-exit p0

    return v7

    :cond_17
    :try_start_13
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return v6

    :cond_18
    :try_start_14
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit p0

    return v6

    :cond_19
    :try_start_15
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Interstitial is not ready to be shown yet."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit p0

    return v7

    :cond_1a
    :try_start_16
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->READY:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_1b

    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_1b
    monitor-exit p0

    return v6

    :cond_1c
    if-nez p2, :cond_1d

    :try_start_17
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "Already loading an interstitial."

    aput-object v0, p2, v7

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_1d
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->p()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$b;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$b;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->D()V

    :cond_0
    return-void
.end method

.method public forceRefresh()V
    .locals 2

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial$b;Z)Z

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial$b;Z)Z

    return-void
.end method

.method public final g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_3
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public getAdFormat()Lcom/mopub/common/AdFormat;
    .locals 1

    sget-object v0, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    return-object v0
.end method

.method public bridge synthetic getAdHeight()I
    .locals 1

    invoke-static {p0}, Lfh1;->$default$getAdHeight(Lcom/mopub/mobileads/MoPubAd;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdUnitId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lfh1;->$default$getAdUnitId(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewController()Lcom/mopub/mobileads/AdViewController;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    return-object v0
.end method

.method public bridge synthetic getAdWidth()I
    .locals 1

    invoke-static {p0}, Lfh1;->$default$getAdWidth(Lcom/mopub/mobileads/MoPubAd;)I

    move-result v0

    return v0
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public bridge synthetic getKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lfh1;->$default$getKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lfh1;->$default$getLocalExtras(Lcom/mopub/mobileads/MoPubAd;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocation()Landroid/location/Location;
    .locals 1

    invoke-static {p0}, Lfh1;->$default$getLocation(Lcom/mopub/mobileads/MoPubAd;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getTesting()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t get testing status for destroyed AdViewController. Returning false."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v3
.end method

.method public bridge synthetic getUserDataKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lfh1;->$default$getUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$b;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$b;->READY:Lcom/mopub/mobileads/MoPubInterstitial$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load()V
    .locals 2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    return-void
.end method

.method public bridge synthetic loadAd()V
    .locals 0

    invoke-static {p0}, Lfh1;->$default$loadAd(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public bridge synthetic loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 0

    invoke-static {p0, p1}, Lfh1;->$default$loadFailUrl(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    return p1
.end method

.method public onAdClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->w()V

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onAdCollapsed()V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdCollapsed(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 3

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Interstitial finished."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/AdViewController;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdExpanded()V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdExpanded(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->READY:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    return-void
.end method

.method public bridge synthetic onAdPauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public bridge synthetic onAdResumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdShown()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic pauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lfh1;->$default$pauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public resolveAdSize()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Lfh1;->$default$resumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public bridge synthetic setAdContentView(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lfh1;->$default$setAdContentView(Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lfh1;->$default$setAdUnitId(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public setAdViewController(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    return-void
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-void
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lfh1;->$default$setKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLocalExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lfh1;->$default$setLocalExtras(Lcom/mopub/mobileads/MoPubAd;Ljava/util/Map;)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setTesting(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setUserDataKeywords(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lfh1;->$default$setUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public show()Z
    .locals 2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$b;)Z

    move-result v0

    return v0
.end method
