.class public Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToPOBError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)Lcom/pubmatic/sdk/common/POBError;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3f3

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xbb9

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0
.end method
