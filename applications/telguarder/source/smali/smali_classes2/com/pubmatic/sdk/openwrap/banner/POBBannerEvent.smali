.class public interface abstract Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;


# virtual methods
.method public abstract getAdSize()Lcom/pubmatic/sdk/common/POBAdSize;
.end method

.method public abstract getRenderer(Ljava/lang/String;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
.end method

.method public abstract requestedAdSizes()[Lcom/pubmatic/sdk/common/POBAdSize;
.end method

.method public abstract setEventListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;)V
.end method
