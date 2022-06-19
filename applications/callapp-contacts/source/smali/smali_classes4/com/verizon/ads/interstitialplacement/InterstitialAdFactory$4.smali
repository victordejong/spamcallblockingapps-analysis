.class final Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/BidRequestListener;

.field final synthetic b:Lcom/verizon/ads/Bid;


# direct methods
.method constructor <init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;->a:Lcom/verizon/ads/BidRequestListener;

    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;->b:Lcom/verizon/ads/Bid;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final safeRun()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;->a:Lcom/verizon/ads/BidRequestListener;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;->b:Lcom/verizon/ads/Bid;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
