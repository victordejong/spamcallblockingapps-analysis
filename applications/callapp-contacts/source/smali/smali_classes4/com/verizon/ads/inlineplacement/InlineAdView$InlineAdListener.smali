.class public interface abstract Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InlineAdListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end method

.method public abstract onAdRefreshed(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end method

.method public abstract onClicked(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end method

.method public abstract onCollapsed(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end method

.method public abstract onError(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/ErrorInfo;)V
.end method

.method public abstract onEvent(Lcom/verizon/ads/inlineplacement/InlineAdView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/inlineplacement/InlineAdView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onExpanded(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end method

.method public abstract onResized(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end method
