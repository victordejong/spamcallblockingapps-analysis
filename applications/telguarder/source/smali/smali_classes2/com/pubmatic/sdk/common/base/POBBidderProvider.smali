.class public interface abstract Lcom/pubmatic/sdk/common/base/POBBidderProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBidder(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBAdRequest;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;)Lcom/pubmatic/sdk/common/base/POBBidding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pubmatic/sdk/common/base/POBAdRequest;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ")",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "TT;>;"
        }
    .end annotation
.end method
