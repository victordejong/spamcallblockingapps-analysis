.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

.field final synthetic b:Lcom/verizon/ads/ErrorInfo;

.field final synthetic c:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;->c:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;->c:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;->onError(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
