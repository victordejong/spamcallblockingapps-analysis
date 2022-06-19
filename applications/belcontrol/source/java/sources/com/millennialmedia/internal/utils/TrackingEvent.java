package com.millennialmedia.internal.utils;

import com.millennialmedia.MMLog;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/TrackingEvent.class */
public class TrackingEvent {
    private static final String TAG = "TrackingEvent";
    private static AtomicInteger activeCount = new AtomicInteger(0);
    private static TrackingEventListener trackingEventListener = null;
    public String name;
    public String url;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/TrackingEvent$TrackingEventListener.class */
    public interface TrackingEventListener {
        void onTrackingEventFired(TrackingEvent trackingEvent);
    }

    public TrackingEvent(String str, String str2) {
        this.name = str;
        this.url = str2;
    }

    public static void fireEvents(final List<TrackingEvent> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        activeCount.incrementAndGet();
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.TrackingEvent.1
            @Override // java.lang.Runnable
            public void run() {
                for (TrackingEvent trackingEvent : list) {
                    if (trackingEvent != null && !Utils.isEmpty(trackingEvent.url)) {
                        if (MMLog.isDebugEnabled()) {
                            String str = TrackingEvent.TAG;
                            MMLog.m4070d(str, "Firing event " + trackingEvent.toString());
                        }
                        HttpUtils.getContentFromGetRequest(trackingEvent.url);
                        if (TrackingEvent.trackingEventListener != null) {
                            TrackingEvent.trackingEventListener.onTrackingEventFired(trackingEvent);
                        }
                    }
                }
                TrackingEvent.activeCount.decrementAndGet();
            }
        });
    }

    public static void fireUrls(List<String> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            if (!Utils.isEmpty(str2)) {
                arrayList.add(new TrackingEvent(str, str2));
            }
        }
        fireEvents(arrayList);
    }

    public static boolean isIdle() {
        return activeCount.intValue() == 0;
    }

    public static void setTrackingEventListener(TrackingEventListener trackingEventListener2) {
        trackingEventListener = trackingEventListener2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrackingEvent)) {
            return false;
        }
        TrackingEvent trackingEvent = (TrackingEvent) obj;
        return this.name.equals(trackingEvent.name) && this.url.equals(trackingEvent.url);
    }

    public int hashCode() {
        return (this.url.hashCode() * 31) + this.name.hashCode();
    }

    public String toString() {
        return (("Event:[name:" + this.name + ";") + "url:" + this.url) + "]";
    }
}
