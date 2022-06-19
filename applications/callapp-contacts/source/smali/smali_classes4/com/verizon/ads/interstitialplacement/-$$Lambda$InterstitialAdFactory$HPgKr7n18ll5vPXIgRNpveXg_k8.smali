.class public final synthetic Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8;->f$0:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8;->f$0:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    invoke-static {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->lambda$HPgKr7n18ll5vPXIgRNpveXg_k8(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
