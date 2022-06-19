.class Lcom/pubmatic/sdk/openwrap/core/POBManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/core/POBManager;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/core/POBManager;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/core/POBManager;Lcom/pubmatic/sdk/openwrap/core/POBManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBManager;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->setError(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->d(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->e(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-interface {v0, v1, p1}, Lcom/pubmatic/sdk/common/base/POBBidderListener;->onBidsFailed(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBManager"

    const-string v2, "Ready to share Wrapper bid"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->setAdResponse(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->c(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;->a:Lcom/pubmatic/sdk/openwrap/core/POBManager;

    invoke-interface {v0, v1, p1}, Lcom/pubmatic/sdk/common/base/POBBidderListener;->onBidsFetched(Lcom/pubmatic/sdk/common/base/POBBidding;Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    :cond_1
    return-void
.end method
