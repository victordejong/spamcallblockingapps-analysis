.class final Lio/bidmachine/j;
.super Lio/bidmachine/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/j$a;
    }
.end annotation


# instance fields
.field final intervalHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/TrackEventType;",
            "Lio/bidmachine/TrackEventInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final totalHolder:Lio/bidmachine/j$a;

.field final trackingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lio/bidmachine/i;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/j;->trackingMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/j;->intervalHolders:Ljava/util/Map;

    .line 50
    new-instance v0, Lio/bidmachine/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/j$a;-><init>(Lio/bidmachine/j$a;)V

    iput-object v0, p0, Lio/bidmachine/j;->totalHolder:Lio/bidmachine/j$a;

    return-void
.end method

.method private obtainHolder(Lio/bidmachine/AdsType;)Lio/bidmachine/j$a;
    .locals 2

    .line 139
    iget-object v0, p0, Lio/bidmachine/j;->trackingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lio/bidmachine/j$a;

    iget-object v1, p0, Lio/bidmachine/j;->totalHolder:Lio/bidmachine/j$a;

    invoke-direct {v0, v1}, Lio/bidmachine/j$a;-><init>(Lio/bidmachine/j$a;)V

    .line 141
    iget-object v1, p0, Lio/bidmachine/j;->trackingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lio/bidmachine/j;->trackingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/bidmachine/j$a;

    :goto_0
    return-object v0
.end method


# virtual methods
.method final clearTrackers(Lio/bidmachine/TrackingObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lio/bidmachine/j;->intervalHolders:Ljava/util/Map;

    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method final clearTrackingEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lio/bidmachine/j;->intervalHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumMap;

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final getEventCount(Lio/bidmachine/AdsType;Lio/bidmachine/TrackEventType;)I
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lio/bidmachine/j;->obtainHolder(Lio/bidmachine/AdsType;)Lio/bidmachine/j$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/bidmachine/j$a;->getCount(Lio/bidmachine/TrackEventType;)I

    move-result p1

    return p1
.end method

.method public final getTotalEventCount(Lio/bidmachine/TrackEventType;)I
    .locals 1

    .line 134
    iget-object v0, p0, Lio/bidmachine/j;->totalHolder:Lio/bidmachine/j$a;

    invoke-virtual {v0, p1}, Lio/bidmachine/j$a;->getCount(Lio/bidmachine/TrackEventType;)I

    move-result p1

    return p1
.end method

.method public final trackEventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V
    .locals 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lio/bidmachine/j;->intervalHolders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/TrackEventInfo;

    if-eqz v0, :cond_2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lio/bidmachine/TrackEventInfo;->finishTimeMs:J

    .line 93
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p0, p1}, Lio/bidmachine/j;->clearTrackers(Lio/bidmachine/TrackingObject;)V

    .line 98
    :cond_3
    invoke-static {p1, p2, v0, p4}, Lio/bidmachine/j;->notifyTrack(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/utils/BMError;)V

    if-eqz p3, :cond_4

    if-nez p4, :cond_4

    .line 100
    invoke-direct {p0, p3}, Lio/bidmachine/j;->obtainHolder(Lio/bidmachine/AdsType;)Lio/bidmachine/j$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/bidmachine/j$a;->track(Lio/bidmachine/TrackEventType;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final trackEventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V
    .locals 1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 64
    :cond_1
    iget-object p4, p0, Lio/bidmachine/j;->intervalHolders:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/EnumMap;

    if-nez p4, :cond_2

    .line 66
    new-instance p4, Ljava/util/EnumMap;

    const-class v0, Lio/bidmachine/TrackEventType;

    invoke-direct {p4, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 67
    iget-object v0, p0, Lio/bidmachine/j;->intervalHolders:Ljava/util/Map;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-virtual {p4, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_0

    .line 70
    :cond_3
    new-instance p3, Lio/bidmachine/TrackEventInfo;

    invoke-direct {p3}, Lio/bidmachine/TrackEventInfo;-><init>()V

    :goto_0
    invoke-virtual {p4, p2, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method
