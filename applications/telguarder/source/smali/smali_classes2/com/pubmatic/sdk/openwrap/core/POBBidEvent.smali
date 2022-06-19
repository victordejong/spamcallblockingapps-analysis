.class public interface abstract Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;,
        Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;
    }
.end annotation


# virtual methods
.method public abstract getBid()Lcom/pubmatic/sdk/openwrap/core/POBBid;
.end method

.method public abstract proceedOnError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)V
.end method

.method public abstract proceedToLoadAd()Z
.end method

.method public abstract setBidEventListener(Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;)V
.end method
