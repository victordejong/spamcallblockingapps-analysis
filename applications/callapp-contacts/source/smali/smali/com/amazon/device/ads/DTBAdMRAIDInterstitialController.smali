.class Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;
.super Lcom/amazon/device/ads/DTBAdMRAIDController;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdViewDisplayListener;


# instance fields
.field a:Lcom/amazon/device/ads/DTBAdInterstitialListener;

.field j:Z

.field k:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->j:Z

    .line 16
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->k:Z

    .line 20
    iput-object p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a:Lcom/amazon/device/ads/DTBAdInterstitialListener;

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const-string v2, "amzn_bridge"

    .line 3174
    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/DTBAdView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 3175
    iget-object v2, v0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iput-object v1, v2, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 3176
    iget-object v2, v0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iput-object v1, v2, Lcom/amazon/device/ads/DTBAdMRAIDController;->f:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    .line 3177
    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->HIDDEN:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->b(Z)V

    .line 74
    invoke-static {}, Lcom/amazon/device/ads/DTBInterstitialActivity;->a()Lcom/amazon/device/ads/DTBInterstitialActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDInterstitialController$fzRs_3vo3g0AIhcX6L4V_Y12aTc;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDInterstitialController$fzRs_3vo3g0AIhcX6L4V_Y12aTc;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$L9QnppyZhPHMxuIrrpmYL2cjQvA(Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->v()V

    return-void
.end method

.method public static synthetic lambda$fzRs_3vo3g0AIhcX6L4V_Y12aTc(Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$toNhMw91s0J7Y-bdKr1lp2BC04w(Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->w()V

    return-void
.end method

.method private u()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->k:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->o()V

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->n()V

    return-void
.end method

.method private synthetic v()V
    .locals 0

    return-void
.end method

.method private synthetic w()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 136
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->a()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object v0

    const/4 v1, 0x0

    .line 2042
    iput-object v1, v0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    return-void
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "resize"

    const-string v0, "invalid placement type"

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 141
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->a()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object v0

    const/4 v1, 0x0

    .line 3042
    iput-object v1, v0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    return-void
.end method

.method protected final b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "expand"

    const-string v0, "invalid placement type for interstitial "

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .locals 3

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->j:Z

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->u()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "interstitial"

    return-object v0
.end method

.method protected final e()V
    .locals 1

    const-string v0, "close"

    .line 66
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final f()V
    .locals 1

    const-string v0, "unload"

    .line 93
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->k:Z

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->u()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final i()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->a:Lcom/amazon/device/ads/DTBAdInterstitialListener;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDInterstitialController$toNhMw91s0J7Y-bdKr1lp2BC04w;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDInterstitialController$toNhMw91s0J7Y-bdKr1lp2BC04w;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final j()V
    .locals 2

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDInterstitialController$L9QnppyZhPHMxuIrrpmYL2cjQvA;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDInterstitialController$L9QnppyZhPHMxuIrrpmYL2cjQvA;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->a()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object v0

    .line 1042
    iput-object p0, v0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    return-void
.end method

.method protected final k()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->k()V

    return-void
.end method
