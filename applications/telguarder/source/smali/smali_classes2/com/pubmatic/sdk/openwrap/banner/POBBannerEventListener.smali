.class public interface abstract Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getBidsProvider()Lcom/pubmatic/sdk/common/base/POBBidsProvider;
.end method

.method public abstract onAdClick()V
.end method

.method public abstract onAdClosed()V
.end method

.method public abstract onAdLeftApplication()V
.end method

.method public abstract onAdOpened()V
.end method

.method public abstract onAdServerWin(Landroid/view/View;)V
.end method

.method public abstract onFailed(Lcom/pubmatic/sdk/common/POBError;)V
.end method

.method public abstract onOpenWrapPartnerWin()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onOpenWrapPartnerWin(Ljava/lang/String;)V
.end method
