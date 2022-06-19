.class public Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;
.super Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBAdDescriptor;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBTracking;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResourceType()Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->b:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResource()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResourceType()Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->a:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResource()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "<img src = \"%s\" style = \"display: block; width:100%%; height: 100%%;\"/>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https://obplaceholder.click.com/"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->g:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    const-string v0, "<a href = \"%s\">%s</a>"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->getResource()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "<iframe src =\"%s\" width = \"100%%\" height = \"100%%\" frameBorder=\"0\" style = \"display: inline;max-height:100%%; max-width: 100%%;\" />"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 2

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->a:I

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->b:I

    const-string v0, "assetWidth"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->c:I

    const-string v0, "assetHeight"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->d:I

    const-string v0, "apiFramework"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->e:Ljava/lang/String;

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;

    const-string v1, "TrackingEvents/Tracking"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->f:Ljava/util/List;

    const-string v0, "CompanionClickThrough"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->g:Ljava/lang/String;

    const-string v0, "CompanionClickTracking"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->h:Ljava/util/List;

    const-string v0, "renderingMode"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->k:Ljava/lang/String;

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "HTMLResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-nez v0, :cond_0

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "StaticResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-nez v0, :cond_0

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "IFrameResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    :cond_0
    const-string v0, "../../UniversalAdId"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->j:Ljava/lang/String;

    return-void
.end method

.method public buildWithRefreshAndExpiryTimeout(II)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->d:I

    return v0
.end method

.method public getAssetWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->c:I

    return v0
.end method

.method public getClickThroughURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->g:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->h:Ljava/util/List;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->b:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->a:I

    return v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;->COMPANION:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->b:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Lcom/pubmatic/sdk/video/vastmodels/POBResource;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->i:Lcom/pubmatic/sdk/video/vastmodels/POBResource;

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

.method public getTrackingEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBTracking;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->f:Ljava/util/List;

    return-object v0
.end method

.method public getUniversalAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getVastCreativeType()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;->COMPANION:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->a:I

    return v0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRenderingMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->k:Ljava/lang/String;

    return-void
.end method
