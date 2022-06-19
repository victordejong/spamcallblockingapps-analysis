package io.bidmachine;

import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineEvents.class */
public class BidMachineEvents {
    public static void clear(TrackingObject trackingObject) {
        AbstractC17874i sessionTracker = C17842d.get().getSessionTracker();
        if (sessionTracker != null) {
            sessionTracker.clearTrackers(trackingObject);
        }
    }

    public static void clearEvent(TrackingObject trackingObject, TrackEventType trackEventType) {
        AbstractC17874i sessionTracker = C17842d.get().getSessionTracker();
        if (sessionTracker != null) {
            sessionTracker.clearTrackingEvent(trackingObject, trackEventType);
        }
    }

    public static void eventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError) {
        AbstractC17874i sessionTracker = C17842d.get().getSessionTracker();
        if (sessionTracker != null) {
            sessionTracker.trackEventFinish(trackingObject, trackEventType, adsType, bMError);
        }
    }

    public static void eventStart(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType) {
        eventStart(trackingObject, trackEventType, null, adsType);
    }

    public static void eventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType) {
        AbstractC17874i sessionTracker = C17842d.get().getSessionTracker();
        if (sessionTracker != null) {
            sessionTracker.trackEventStart(trackingObject, trackEventType, trackEventInfo, adsType);
        }
    }
}
