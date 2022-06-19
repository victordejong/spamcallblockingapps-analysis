.class public abstract Lio/bidmachine/models/AdObjectParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEF_VIEWABILITY_IGNORE_WINDOW_FOCUS:Z = false

.field private static final DEF_VIEWABILITY_PIXEL_THRESHOLD:F = 1.0f

.field private static final DEF_VIEWABILITY_TIME_THRESHOLD:J = 0x1L


# instance fields
.field private trackUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private viewabilityIgnoreWindowFocus:Z

.field private viewabilityPixelThreshold:F

.field private viewabilityTimeThresholdSec:J


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 28
    iput-wide v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityTimeThresholdSec:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityPixelThreshold:F

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityIgnoreWindowFocus:Z

    .line 32
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lio/bidmachine/TrackEventType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    .line 37
    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProto(I)Lcom/explorestack/protobuf/Any;

    move-result-object v1

    const-class v2, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProto(I)Lcom/explorestack/protobuf/Any;

    move-result-object v1

    const-class v2, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension;

    .line 42
    invoke-virtual {p0, p1, p2, v1}, Lio/bidmachine/models/AdObjectParams;->prepareExtensions(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lio/bidmachine/protobuf/AdExtension;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addEvent(Lio/bidmachine/TrackEventType;Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-object v1, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTrackUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getViewabilityPixelThreshold()F
    .locals 1

    .line 95
    iget v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityPixelThreshold:F

    return v0
.end method

.method public getViewabilityTimeThresholdMs()J
    .locals 3

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityTimeThresholdSec:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract isValid()Z
.end method

.method public isViewabilityIgnoreWindowFocus()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityIgnoreWindowFocus:Z

    return v0
.end method

.method protected prepareEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 70
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getTypeValue()I

    move-result v1

    invoke-static {v1}, Lio/bidmachine/TrackEventType;->fromNumber(I)Lio/bidmachine/TrackEventType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/bidmachine/models/AdObjectParams;->addEvent(Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public prepareExtensions(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lio/bidmachine/protobuf/AdExtension;)V
    .locals 6

    .line 55
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result p1

    int-to-long v0, p1

    .line 56
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    .line 55
    invoke-static/range {v0 .. v5}, Lio/bidmachine/Utils;->getOrDefault(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityTimeThresholdSec:J

    .line 58
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result p1

    .line 59
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    invoke-static {p1, p2, v0}, Lio/bidmachine/Utils;->getOrDefault(FFF)F

    move-result p1

    iput p1, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityPixelThreshold:F

    .line 61
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityIgnoreWindowFocus:Z

    .line 62
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/models/AdObjectParams;->prepareEvents(Ljava/util/List;)V

    return-void
.end method

.method public abstract toMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;
.end method
