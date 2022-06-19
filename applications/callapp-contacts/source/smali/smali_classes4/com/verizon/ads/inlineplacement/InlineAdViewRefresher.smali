.class Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Lcom/verizon/ads/Logger;

.field private static c:Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/inlineplacement/InlineAdView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/verizon/ads/inlineplacement/InlineAdFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->c:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->e:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->d:Z

    .line 109
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 3

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    const-string v0, "InlineAdView instance was null or destroyed, cannot start refresh."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->d:Z

    if-eqz v0, :cond_1

    .line 92
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Refreshing already started."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->d:Z

    .line 101
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/verizon/ads/inlineplacement/InlineAdView;->getRefreshInterval()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdView;

    if-eqz v0, :cond_b

    .line 46
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->isRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Inline refresh disabled, stopping refresh behavior"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_1
    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 60
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to find valid activity context for ad, stopping refresh"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 1482
    :cond_2
    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1484
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Unable to find valid activity context for ad, cannot refresh."

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 1488
    :cond_3
    invoke-static {}, Lcom/verizon/ads/VASAds;->getActivityStateManager()Lcom/verizon/ads/ActivityStateManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/verizon/ads/ActivityStateManager;->getState(Landroid/app/Activity;)Lcom/verizon/ads/ActivityStateManager$ActivityState;

    move-result-object v1

    sget-object v4, Lcom/verizon/ads/ActivityStateManager$ActivityState;->RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1490
    :goto_0
    iget-object v4, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v4}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    if-eqz v4, :cond_5

    .line 1491
    invoke-interface {v4}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->isResized()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    .line 1495
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->j:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x3

    if-eqz v1, :cond_9

    .line 66
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 67
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "Requesting refresh for ad: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 69
    :cond_7
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->e:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    if-nez v0, :cond_8

    .line 2181
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Cannot refresh a null InlineAdView instance."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 2186
    :cond_8
    iget-object v2, v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    iget-object v1, v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    new-instance v3, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;

    invoke-direct {v3, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 72
    :cond_9
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 73
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "Ad in not is a valid state for refresh, skipping refresh for ad: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 79
    :cond_a
    :goto_4
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->getRefreshInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 47
    :cond_b
    :goto_5
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->b:Lcom/verizon/ads/Logger;

    const-string v1, "InlineAdView instance has been destroyed, shutting down refresh behavior"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
