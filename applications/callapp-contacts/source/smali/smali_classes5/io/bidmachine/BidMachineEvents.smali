.class public Lio/bidmachine/BidMachineEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Lio/bidmachine/TrackingObject;)V
    .locals 1

    .line 44
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getSessionTracker()Lio/bidmachine/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Lio/bidmachine/i;->clearTrackers(Lio/bidmachine/TrackingObject;)V

    :cond_0
    return-void
.end method

.method public static clearEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
    .locals 1

    .line 37
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getSessionTracker()Lio/bidmachine/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/i;->clearTrackingEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V

    :cond_0
    return-void
.end method

.method public static eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 29
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getSessionTracker()Lio/bidmachine/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p0, p1, p2, p3}, Lio/bidmachine/i;->trackEventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method

.method public static eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0, p2}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V

    return-void
.end method

.method public static eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V
    .locals 1

    .line 19
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getSessionTracker()Lio/bidmachine/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p0, p1, p2, p3}, Lio/bidmachine/i;->trackEventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V

    :cond_0
    return-void
.end method
