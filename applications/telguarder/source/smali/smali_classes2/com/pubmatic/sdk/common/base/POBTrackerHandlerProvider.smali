.class public interface abstract Lcom/pubmatic/sdk/common/base/POBTrackerHandlerProvider;
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
.method public abstract getTrackerHandler(Ljava/util/List;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler;",
            ")",
            "Lcom/pubmatic/sdk/common/network/POBTrackerHandling;"
        }
    .end annotation
.end method
