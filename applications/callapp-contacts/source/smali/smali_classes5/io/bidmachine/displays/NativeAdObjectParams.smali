.class final Lio/bidmachine/displays/NativeAdObjectParams;
.super Lio/bidmachine/models/AdObjectParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;


# instance fields
.field private mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/models/AdObjectParams;-><init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 30
    new-instance p1, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;

    invoke-direct {p1, p0}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;)V

    iput-object p1, p0, Lio/bidmachine/displays/NativeAdObjectParams;->mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

    .line 34
    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/NativeAdObjectParams;->prepareEvents(Ljava/util/List;)V

    .line 36
    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 38
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object p3

    if-eq p2, p3, :cond_0

    .line 39
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickUrl"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    .line 40
    :goto_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getTrkrCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 41
    sget-object v0, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getTrkr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/displays/NativeAdObjectParams;->addEvent(Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getAssetList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    .line 45
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getId()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_8

    const/4 v0, 0x7

    if-eq p3, v0, :cond_7

    const/16 v0, 0x8

    if-eq p3, v0, :cond_6

    const/16 v0, 0x7b

    if-eq p3, v0, :cond_5

    const/16 v0, 0x7c

    if-eq p3, v0, :cond_4

    const/16 v0, 0x7f

    if-eq p3, v0, :cond_3

    const/16 v0, 0x80

    if-eq p3, v0, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "imageUrl"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string v0, "description"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "iconUrl"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 47
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v0, "title"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string v0, "cta"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 67
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "rating"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 71
    :cond_8
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getCurl()Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getCurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 73
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getCurl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoUrl"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_9
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getAdm()Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 77
    invoke-virtual {p0}, Lio/bidmachine/displays/NativeAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getAdm()Ljava/lang/String;

    move-result-object p2

    const-string v0, "videoAdm"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/bidmachine/displays/NativeAdObjectParams;->params:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/displays/NativeAdObjectParams;->params:Ljava/util/HashMap;

    .line 91
    :cond_0
    iget-object v0, p0, Lio/bidmachine/displays/NativeAdObjectParams;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/bidmachine/displays/NativeAdObjectParams;->mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

    return-object v0
.end method
