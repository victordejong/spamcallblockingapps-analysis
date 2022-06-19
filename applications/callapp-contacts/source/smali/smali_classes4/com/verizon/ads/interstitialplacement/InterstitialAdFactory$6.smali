.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

.field final synthetic b:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

.field final synthetic c:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->c:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 821
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->c:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;->onLoaded(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V

    .line 822
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 1464
    sget-object v3, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a:Landroid/os/Handler;

    new-instance v4, Lcom/verizon/ads/interstitialplacement/InterstitialAd$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$2;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
