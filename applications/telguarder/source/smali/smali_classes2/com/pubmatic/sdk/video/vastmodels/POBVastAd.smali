.class public Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;,
        Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBAdVerification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;->NO_ADS:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->a:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getClickTrackers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p2

    :pswitch_1
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getViewUndeterminedImpressions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getNotViewableImpressions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getViewableImpressions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getErrorURLs()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getImpressions()Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCompanions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object p1

    sget-object p2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PROGRESS:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getTrackingEvents(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;->INLINE:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

    :goto_0
    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->a:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;->WRAPPER:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "AdSystem"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->b:Ljava/lang/String;

    const-string v0, "AdTitle"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->c:Ljava/lang/String;

    const-string v0, "AdServingId"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->d:Ljava/lang/String;

    const-string v0, "Description"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->e:Ljava/lang/String;

    const-string v0, "Pricing"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->f:Ljava/lang/String;

    const-string v0, "Expires"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->g:I

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->h:Ljava/util/List;

    const-string v0, "VASTAdTagURI"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->i:Ljava/lang/String;

    const-string v0, "Impression"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->j:Ljava/util/List;

    const-string v0, "ViewableImpression/Viewable"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->k:Ljava/util/List;

    const-string v0, "ViewableImpression/NotViewable"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->l:Ljava/util/List;

    const-string v0, "ViewableImpression/ViewUndetermined"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->m:Ljava/util/List;

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;

    const-string v1, "Creatives/Creative/Linear"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->n:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    if-nez v0, :cond_2

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBNonLinear;

    const-string v1, "Creatives/Creative/NonLinearAds/NonLinear"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->n:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    :cond_2
    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    const-string v1, "Creatives/Creative/CompanionAds/Companion"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->o:Ljava/util/List;

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBAdVerification;

    const-string v1, "AdVerifications/Verification"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->q:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBAdVerification;

    const-string v1, "Extensions/Extension/AdVerifications/Verification"

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getObjectList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->q:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public getAdServingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->a:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType;

    return-object v0
.end method

.method public getAdVerification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBAdVerification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->q:Ljava/util/List;

    return-object v0
.end method

.method public getClosestIcon()Lcom/pubmatic/sdk/video/vastmodels/POBIcon;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getVastCreativeType()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    move-result-object v2

    sget-object v3, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;->LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    if-ne v2, v3, :cond_0

    check-cast v1, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->getIconList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCombinedCompanions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCompanions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCompanions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCombinedList(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p0, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCombinedObjectList(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;",
            ")",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p0, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCombinedTrackingEventList(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getTrackingEventUrls(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getTrackingEventUrls(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCombinedVerificationList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getAdVerification()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getAdVerification()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCompanions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->o:Ljava/util/List;

    return-object v0
.end method

.method public getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->n:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->h:Ljava/util/List;

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->g:I

    return v0
.end method

.method public getImpressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->j:Ljava/util/List;

    return-object v0
.end method

.method public getNotViewableImpressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->l:Ljava/util/List;

    return-object v0
.end method

.method public getPricing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVASTAdTagURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getViewUndeterminedImpressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->m:Ljava/util/List;

    return-object v0
.end method

.method public getViewableImpressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->k:Ljava/util/List;

    return-object v0
.end method

.method public getWrapper()Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->p:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    return-object v0
.end method

.method public setWrapper(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->p:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    return-void
.end method
