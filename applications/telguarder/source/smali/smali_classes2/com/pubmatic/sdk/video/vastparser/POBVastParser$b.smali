.class Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Ljava/lang/String;ILcom/pubmatic/sdk/video/vastmodels/POBVastAd;)Lcom/pubmatic/sdk/video/vastmodels/POBVast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

.field final synthetic c:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;ILcom/pubmatic/sdk/video/vastmodels/POBVast;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->c:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iput p2, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->a:I

    iput-object p3, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->b:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->c:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iget v1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->a:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->b:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVast;->getAds()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-static {v0, p1, v1, v2}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Ljava/lang/String;ILcom/pubmatic/sdk/video/vastmodels/POBVastAd;)Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->c:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->b:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    const/16 v1, 0x64

    const-string v2, "Failed to parse vast response."

    invoke-static {p1, v0, v1, v2}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Lcom/pubmatic/sdk/video/vastmodels/POBVast;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->c:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->b:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Lcom/pubmatic/sdk/common/POBError;)I

    move-result v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Lcom/pubmatic/sdk/video/vastmodels/POBVast;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$b;->a(Ljava/lang/String;)V

    return-void
.end method
