.class public Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->g:Z

    return-void
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 2

    const-string v0, "delivery"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->a:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->b:Ljava/lang/String;

    const-string v0, "bitrate"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->c:I

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->d:I

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->e:I

    const-string v0, "scalable"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->f:Z

    const-string v0, "maintainAspectRatio"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->g:Z

    :cond_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->h:Ljava/lang/String;

    const-string v0, "fileSize"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->i:Ljava/lang/String;

    return-void
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->c:I

    return v0
.end method

.method public getDelivery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->e:I

    return v0
.end method

.method public getMaintainAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->g:Z

    return v0
.end method

.method public getMediaFileURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getScalable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->f:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
