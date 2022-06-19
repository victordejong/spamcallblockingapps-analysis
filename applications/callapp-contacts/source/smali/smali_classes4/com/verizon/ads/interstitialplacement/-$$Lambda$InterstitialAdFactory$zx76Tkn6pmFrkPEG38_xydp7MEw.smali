.class public final synthetic Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

.field public final synthetic f$1:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

.field public final synthetic f$2:Lcom/verizon/ads/AdSession;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;->f$0:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;->f$1:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;->f$2:Lcom/verizon/ads/AdSession;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;->f$0:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;->f$1:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;->f$2:Lcom/verizon/ads/AdSession;

    invoke-static {v0, v1, v2, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->lambda$zx76Tkn6pmFrkPEG38_xydp7MEw(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
