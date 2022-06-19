.class public Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;
.super Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBTracking;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBResource;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->g:Z

    return-void
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 2

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->a:I

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->b:I

    const-string v0, "expandedWidth"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->c:I

    const-string v0, "expandedHeight"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->d:I

    const-string v0, "minSuggestedDuration"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->e:Ljava/lang/String;

    const-string v0, "scalable"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->f:Z

    const-string v0, "maintainAspectRatio"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->g:Z

    :cond_0
    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;

    const-string v1, "TrackingEvents/Tracking"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->h:Ljava/util/List;

    const-string v0, "NonLinearClickThrough"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->i:Ljava/lang/String;

    const-string v0, "NonLinearClickTracking"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->k:Ljava/util/List;

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "StaticResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "HTMLResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    const-string v1, "IFrameResource"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "../../UniversalAdId"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->l:Ljava/lang/String;

    return-void
.end method

.method public getClickThroughURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->i:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->j:Ljava/util/List;

    return-object v0
.end method

.method public getExpandedHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->d:I

    return v0
.end method

.method public getExpandedWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->c:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->b:I

    return v0
.end method

.method public getMaintainAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->g:Z

    return v0
.end method

.method public getMinSuggestedDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->k:Ljava/util/List;

    return-object v0
.end method

.method public getScalable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->f:Z

    return v0
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

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->h:Ljava/util/List;

    return-object v0
.end method

.method public getUniversalAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVastCreativeType()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;->NONLINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;->a:I

    return v0
.end method
