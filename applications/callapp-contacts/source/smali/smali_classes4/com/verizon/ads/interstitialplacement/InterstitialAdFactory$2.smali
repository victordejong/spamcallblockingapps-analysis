.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/VASAds$AdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

.field final synthetic b:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iput-boolean p3, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->a:Z

    .line 622
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    invoke-static {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    .line 623
    invoke-static {v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;

    iget-object v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 622
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic prepare(Lcom/verizon/ads/AdSession;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/VASAds$AdRequestListener$-CC;->$default$prepare(Lcom/verizon/ads/VASAds$AdRequestListener;Lcom/verizon/ads/AdSession;)V

    return-void
.end method
