.class public Lcom/pubmatic/sdk/video/vastmodels/POBIcon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;
.implements Lcom/pubmatic/sdk/common/base/POBAdDescriptor;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

.field protected mClickThroughURL:Ljava/lang/String;

.field protected mClickTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResourceType()Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->b:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResourceType()Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->a:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResource()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "<img src = \"%s\" style = \"display: block; width:100%%; height: 100%%;\"/>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mClickThroughURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https://obplaceholder.click.com/"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mClickThroughURL:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    const-string v0, "<a href = \"%s\">%s</a>"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResource()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "<iframe src =\"%s\" width = \"100%%\" height = \"100%%\" frameBorder=\"0\" style = \"display: inline;max-height:100%%; max-width: 100%%;\" />"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 2

    const-string v0, "program"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->a:Ljava/lang/String;

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->b:I

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->c:I

    const-string v0, "xPosition"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->d:Ljava/lang/String;

    const-string v0, "yPosition"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->e:Ljava/lang/String;

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getSeconds(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->f:I

    :cond_0
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getSeconds(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->g:I

    :cond_1
    const-string v0, "apiFramework"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->h:Ljava/lang/String;

    const-string v0, "IconClicks/IconClickThrough"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mClickThroughURL:Ljava/lang/String;

    const-string v0, "IconClicks/IconClickTracking"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mClickTrackers:Ljava/util/List;

    const-string v0, "IconViewTracking"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mViewTrackers:Ljava/util/List;

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "StaticResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-nez v0, :cond_2

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "HTMLResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-nez v0, :cond_2

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "IFrameResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    :cond_2
    return-void
.end method

.method public buildWithRefreshAndExpiryTimeout(II)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThroughURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mClickThroughURL:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mClickTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->c:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->b:I

    return v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->f:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->g:I

    return v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRawBid()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRenderableContent()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/pubmatic/sdk/video/vastmodels/POBResource;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetingInfo()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->mViewTrackers:Ljava/util/List;

    return-object v0
.end method

.method public getXPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getYPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
