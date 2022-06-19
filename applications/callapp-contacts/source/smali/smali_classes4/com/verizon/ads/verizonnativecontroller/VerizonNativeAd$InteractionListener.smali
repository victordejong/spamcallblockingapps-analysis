.class public interface abstract Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractionListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/verizon/ads/Component;)V
.end method

.method public abstract onClicked(Lcom/verizon/ads/Component;)V
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
