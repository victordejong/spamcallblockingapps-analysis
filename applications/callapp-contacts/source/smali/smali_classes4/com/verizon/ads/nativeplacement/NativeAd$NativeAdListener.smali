.class public interface abstract Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/verizon/ads/nativeplacement/NativeAd;)V
.end method

.method public abstract onClicked(Lcom/verizon/ads/nativeplacement/NativeAd;Lcom/verizon/ads/Component;)V
.end method

.method public abstract onClosed(Lcom/verizon/ads/nativeplacement/NativeAd;)V
.end method

.method public abstract onError(Lcom/verizon/ads/nativeplacement/NativeAd;Lcom/verizon/ads/ErrorInfo;)V
.end method

.method public abstract onEvent(Lcom/verizon/ads/nativeplacement/NativeAd;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/nativeplacement/NativeAd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
