.class public Lcom/pubmatic/sdk/video/vastmodels/POBLinear;
.super Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;
.source ""


# instance fields
.field private a:D

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBTracking;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBIcon;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 3

    const-string v0, "../UniversalAdId"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->f:Ljava/lang/String;

    const-string v0, "Duration"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getSeconds(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->a:D

    :cond_0
    const-class v1, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;

    const-string v2, "TrackingEvents/Tracking"

    invoke-virtual {p1, v2, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->b:Ljava/util/List;

    const-string v1, "VideoClicks/ClickThrough"

    invoke-virtual {p1, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->mClickThroughURL:Ljava/lang/String;

    const-string v1, "VideoClicks/ClickTracking"

    invoke-virtual {p1, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->mClickTrackers:Ljava/util/List;

    const-string v1, "VideoClicks/CustomClick"

    invoke-virtual {p1, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->c:Ljava/lang/String;

    const-class v1, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    const-string v2, "MediaFiles/MediaFile"

    invoke-virtual {p1, v2, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->d:Ljava/util/List;

    const-class v1, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    const-string v2, "Icons/Icon"

    invoke-virtual {p1, v2, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->e:Ljava/util/List;

    const-string v1, "skipoffset"

    invoke-virtual {p1, v1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertToSeconds(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->g:D

    :cond_1
    return-void
.end method

.method public getCustomClick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->a:D

    return-wide v0
.end method

.method public getIconList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBIcon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->e:Ljava/util/List;

    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->d:Ljava/util/List;

    return-object v0
.end method

.method public getSkipOffset()D
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->g:D

    return-wide v0
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

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->b:Ljava/util/List;

    return-object v0
.end method

.method public getUniversalAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVastCreativeType()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;->LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    return-object v0
.end method
