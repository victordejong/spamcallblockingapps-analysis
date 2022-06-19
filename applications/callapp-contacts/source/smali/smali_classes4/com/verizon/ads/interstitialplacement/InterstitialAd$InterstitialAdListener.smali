.class public interface abstract Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterstitialAdListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
.end method

.method public abstract onClicked(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
.end method

.method public abstract onClosed(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
.end method

.method public abstract onError(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Lcom/verizon/ads/ErrorInfo;)V
.end method

.method public abstract onEvent(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/interstitialplacement/InterstitialAd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onShown(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
.end method
