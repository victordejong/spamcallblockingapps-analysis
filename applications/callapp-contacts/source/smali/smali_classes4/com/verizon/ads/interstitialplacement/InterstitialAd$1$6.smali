.class Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v1, v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;->onEvent(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
