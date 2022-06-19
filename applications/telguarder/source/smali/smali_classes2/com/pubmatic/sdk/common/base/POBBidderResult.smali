.class public Lcom/pubmatic/sdk/common/base/POBBidderResult;
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


# instance fields
.field private a:Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/pubmatic/sdk/common/POBError;

.field private c:Lcom/pubmatic/sdk/common/network/POBNetworkResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->a:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object v0
.end method

.method public getError()Lcom/pubmatic/sdk/common/POBError;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->b:Lcom/pubmatic/sdk/common/POBError;

    return-object v0
.end method

.method public getNetworkResult()Lcom/pubmatic/sdk/common/network/POBNetworkResult;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->c:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    return-object v0
.end method

.method public setAdResponse(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->a:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-void
.end method

.method public setError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->b:Lcom/pubmatic/sdk/common/POBError;

    return-void
.end method

.method public setNetworkResult(Lcom/pubmatic/sdk/common/network/POBNetworkResult;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->c:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POBBidderResult{adResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->a:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->b:Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/base/POBBidderResult;->c:Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
