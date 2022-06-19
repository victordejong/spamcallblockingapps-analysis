.class public interface abstract Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/rewarded/HyBidRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onReward()V
.end method

.method public abstract onRewardedClick()V
.end method

.method public abstract onRewardedClosed()V
.end method

.method public abstract onRewardedLoadFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onRewardedLoaded()V
.end method

.method public abstract onRewardedOpened()V
.end method
