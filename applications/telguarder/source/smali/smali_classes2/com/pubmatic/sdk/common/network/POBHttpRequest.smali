.class public Lcom/pubmatic/sdk/common/network/POBHttpRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->c:F

    sget-object v0, Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;->GET:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->h:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/pubmatic/sdk/common/network/POBHttpRequest;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->clone()Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->h:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    return-object v0
.end method

.method public getRequestTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryBackoffMultiplier()F
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->c:F

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->b:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->a:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->g:Ljava/util/Map;

    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->h:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    return-void
.end method

.method public setRequestTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setRetryBackoffMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->c:F

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->b:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->a:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestMethod()Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;->POST:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    if-ne v1, v2, :cond_0

    const-string v1, "\nPOST Data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
