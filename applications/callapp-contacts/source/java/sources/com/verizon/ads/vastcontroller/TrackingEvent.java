package com.verizon.ads.vastcontroller;

import com.verizon.ads.Logger;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/TrackingEvent.class */
public class TrackingEvent {

    /* renamed from: a */
    private static final Logger f61795a = Logger.getInstance(TrackingEvent.class);

    /* renamed from: b */
    private static AtomicInteger f61796b = new AtomicInteger(0);

    /* renamed from: c */
    private static TrackingEventListener f61797c = null;
    public final String name;
    public final String url;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/TrackingEvent$TrackingEventListener.class */
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
        f61796b.incrementAndGet();
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.TrackingEvent.1
            @Override // java.lang.Runnable
            public final void run() {
                for (TrackingEvent trackingEvent : list) {
                    if (trackingEvent != null && !TextUtils.isEmpty(trackingEvent.url)) {
                        if (Logger.isLogLevelEnabled(3)) {
                            Logger logger = TrackingEvent.f61795a;
                            logger.m5567d("Firing event " + trackingEvent.toString());
                        }
                        HttpUtils.getContentFromGetRequest(trackingEvent.url);
                        if (TrackingEvent.f61797c != null) {
                            TrackingEvent.f61797c.onTrackingEventFired(trackingEvent);
                        }
                    }
                }
                TrackingEvent.f61796b.decrementAndGet();
            }
        });
    }

    public static void fireUrls(List<String> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            if (!TextUtils.isEmpty(str2)) {
                arrayList.add(new TrackingEvent(str, str2));
            }
        }
        fireEvents(arrayList);
    }

    public static boolean isIdle() {
        return f61796b.intValue() == 0;
    }

    public static void setTrackingEventListener(TrackingEventListener trackingEventListener) {
        f61797c = trackingEventListener;
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
        return "TrackingEvent{name='" + this.name + "', url='" + this.url + "'}";
    }
}
