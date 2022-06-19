.class public abstract Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field protected final b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Z

.field protected f:Z

.field protected final g:Landroid/content/Context;

.field protected final h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field protected final i:Z

.field protected final j:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

.field protected k:Ljava/lang/Runnable;

.field protected final l:F

.field private final m:Landroid/os/HandlerThread;

.field private n:Landroid/content/BroadcastReceiver;

.field private final o:I

.field private p:Ljava/lang/Runnable;

.field private q:Z

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->m:Landroid/os/HandlerThread;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->c:Z

    const/4 v2, 0x1

    .line 32
    iput v2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->d:I

    .line 35
    iput-boolean v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->f:Z

    .line 42
    new-instance v2, Lcom/callapp/contacts/util/ads/loaders/-$$Lambda$ErLw5PNq00TprhKYWWeSfIM5FHk;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/util/ads/loaders/-$$Lambda$ErLw5PNq00TprhKYWWeSfIM5FHk;-><init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V

    iput-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->p:Ljava/lang/Runnable;

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->getAdRunnable()Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->k:Ljava/lang/Runnable;

    .line 45
    iput-boolean v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->q:Z

    .line 46
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "AdRefreshContinueIfNotVisible"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->s:Z

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->g:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 58
    iput p4, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->o:I

    .line 59
    iput-boolean p5, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->i:Z

    .line 60
    iput-object p6, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->j:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 61
    iput p7, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->l:F

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAutoRefreshStatus(Z)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAutoRefreshStatus(Z)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->d()V

    return-void

    .line 127
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->s:Z

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->e()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->d:I

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->c:Z

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1109
    :catch_0
    const-class v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    const-string v1, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->e()V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 3

    .line 94
    new-instance v0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;-><init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->n:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final d()V
    .locals 11

    .line 135
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->e()V

    .line 140
    iget v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->o:I

    if-lez v0, :cond_4

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v3, "AdRefreshDelta"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v3, v2

    if-lez v3, :cond_3

    .line 144
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 145
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    .line 146
    iget v4, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->o:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    mul-int v2, v2, v0

    add-int/2addr v4, v2

    if-gtz v4, :cond_2

    .line 148
    iget v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->o:I

    goto :goto_1

    :cond_2
    move v0, v4

    .line 150
    :goto_1
    const-class v1, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current refresh interval: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->p:Ljava/lang/Runnable;

    const-wide/32 v3, 0x927c0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    iget v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->d:I

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-long v7, v7

    mul-long v5, v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method protected abstract getAdRunnable()Ljava/lang/Runnable;
.end method

.method public setAdVisibility(I)V
    .locals 0

    .line 114
    invoke-static {p1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->q:Z

    .line 116
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAutoRefreshStatus(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAutoRefreshStatus(Z)V

    return-void
.end method
