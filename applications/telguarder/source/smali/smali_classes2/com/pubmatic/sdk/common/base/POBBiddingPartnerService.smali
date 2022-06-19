.class public interface abstract Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBBidderProvider;
.implements Lcom/pubmatic/sdk/common/base/POBCustomRendererProvider;
.implements Lcom/pubmatic/sdk/common/base/POBPriceGranuilarityListener;
.implements Lcom/pubmatic/sdk/common/base/POBTrackerHandlerProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBBidderProvider<",
        "TT;>;",
        "Lcom/pubmatic/sdk/common/base/POBCustomRendererProvider;",
        "Lcom/pubmatic/sdk/common/base/POBPriceGranuilarityListener;",
        "Lcom/pubmatic/sdk/common/base/POBTrackerHandlerProvider<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getAuction()Lcom/pubmatic/sdk/common/base/POBAuctioning;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/base/POBAuctioning<",
            "TT;>;"
        }
    .end annotation
.end method
