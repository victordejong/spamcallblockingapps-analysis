.class public Lio/bidmachine/TrackEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field finishTimeMs:J

.field final startTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/TrackEventInfo;->startTimeMs:J

    return-void
.end method


# virtual methods
.method public getEventParameters()Ljava/util/Map;
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

    .line 28
    iget-object v0, p0, Lio/bidmachine/TrackEventInfo;->eventParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/TrackEventInfo;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/bidmachine/TrackEventInfo;->eventParameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TrackEventInfo;->eventParameters:Ljava/util/HashMap;

    .line 23
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TrackEventInfo;->eventParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
