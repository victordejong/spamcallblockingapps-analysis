.class final Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/BidRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->requestBid(Landroid/content/Context;Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/BidRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/BidRequestListener;


# direct methods
.method constructor <init>(Lcom/verizon/ads/BidRequestListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$1;->a:Lcom/verizon/ads/BidRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 286
    iget-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$1;->a:Lcom/verizon/ads/BidRequestListener;

    invoke-static {p2, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/ErrorInfo;Lcom/verizon/ads/BidRequestListener;)V

    return-void

    .line 288
    :cond_0
    iget-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$1;->a:Lcom/verizon/ads/BidRequestListener;

    invoke-static {p1, p2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/Bid;Lcom/verizon/ads/BidRequestListener;)V

    return-void
.end method
