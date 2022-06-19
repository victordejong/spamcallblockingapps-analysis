package io.bidmachine;

import io.bidmachine.utils.BMError;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: io.bidmachine.j */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/j.class */
public final class C17879j extends AbstractC17874i {
    final Map<AdsType, C17880a> trackingMap = new ConcurrentHashMap();
    final Map<Object, EnumMap<TrackEventType, TrackEventInfo>> intervalHolders = new ConcurrentHashMap();
    private final C17880a totalHolder = new C17880a(null);

    /* renamed from: io.bidmachine.j$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/j$a.class */
    public static final class C17880a {
        private final C17880a referenceHolder;
        private final EnumMap<TrackEventType, AtomicInteger> trackingMap = new EnumMap<>(TrackEventType.class);

        C17880a(C17880a c17880a) {
            this.referenceHolder = c17880a;
        }

        public final int getCount(TrackEventType trackEventType) {
            if (this.trackingMap.containsKey(trackEventType)) {
                return this.trackingMap.get(trackEventType).get();
            }
            return 0;
        }

        public final void track(TrackEventType trackEventType) {
            C17880a c17880a = this.referenceHolder;
            if (c17880a != null) {
                c17880a.track(trackEventType);
            }
            if (this.trackingMap.get(trackEventType) == null) {
                this.trackingMap.put((EnumMap<TrackEventType, AtomicInteger>) trackEventType, (TrackEventType) new AtomicInteger(1));
            } else {
                this.trackingMap.get(trackEventType).incrementAndGet();
            }
        }
    }

    private C17880a obtainHolder(AdsType adsType) {
        C17880a c17880a;
        if (!this.trackingMap.containsKey(adsType)) {
            C17880a c17880a2 = new C17880a(this.totalHolder);
            this.trackingMap.put(adsType, c17880a2);
            c17880a = c17880a2;
        } else {
            c17880a = this.trackingMap.get(adsType);
        }
        return c17880a;
    }

    @Override // io.bidmachine.AbstractC17874i
    public final void clearTrackers(TrackingObject trackingObject) {
        if (trackingObject != null) {
            this.intervalHolders.remove(trackingObject.getTrackingKey());
        }
    }

    @Override // io.bidmachine.AbstractC17874i
    public final void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType) {
        Object trackingKey;
        EnumMap<TrackEventType, TrackEventInfo> enumMap;
        if (trackingObject == null || trackEventType == null || (trackingKey = trackingObject.getTrackingKey()) == null || (enumMap = this.intervalHolders.get(trackingKey)) == null) {
            return;
        }
        enumMap.remove(trackEventType);
    }

    @Override // io.bidmachine.AbstractC17874i
    public final int getEventCount(AdsType adsType, TrackEventType trackEventType) {
        return obtainHolder(adsType).getCount(trackEventType);
    }

    @Override // io.bidmachine.AbstractC17874i
    public final int getTotalEventCount(TrackEventType trackEventType) {
        return this.totalHolder.getCount(trackEventType);
    }

    @Override // io.bidmachine.AbstractC17874i
    public final void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError) {
        Object trackingKey;
        if (trackingObject == null || trackEventType == null || (trackingKey = trackingObject.getTrackingKey()) == null) {
            return;
        }
        EnumMap<TrackEventType, TrackEventInfo> enumMap = this.intervalHolders.get(trackingKey);
        TrackEventInfo trackEventInfo = null;
        if (enumMap != null) {
            trackEventInfo = null;
            if (enumMap.containsKey(trackEventType)) {
                TrackEventInfo trackEventInfo2 = enumMap.get(trackEventType);
                if (trackEventInfo2 != null) {
                    trackEventInfo2.finishTimeMs = System.currentTimeMillis();
                }
                enumMap.remove(trackEventType);
                trackEventInfo = trackEventInfo2;
                if (enumMap.isEmpty()) {
                    clearTrackers(trackingObject);
                    trackEventInfo = trackEventInfo2;
                }
            }
        }
        notifyTrack(trackingObject, trackEventType, trackEventInfo, bMError);
        if (adsType == null || bMError != null) {
            return;
        }
        obtainHolder(adsType).track(trackEventType);
    }

    @Override // io.bidmachine.AbstractC17874i
    public final void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType) {
        Object trackingKey;
        if (trackingObject == null || trackEventType == null || (trackingKey = trackingObject.getTrackingKey()) == null) {
            return;
        }
        EnumMap<TrackEventType, TrackEventInfo> enumMap = this.intervalHolders.get(trackingKey);
        EnumMap<TrackEventType, TrackEventInfo> enumMap2 = enumMap;
        if (enumMap == null) {
            enumMap2 = new EnumMap<>(TrackEventType.class);
            this.intervalHolders.put(trackingKey, enumMap2);
        }
        if (enumMap2.containsKey(trackEventType)) {
            return;
        }
        if (trackEventInfo == null) {
            trackEventInfo = new TrackEventInfo();
        }
        enumMap2.put((EnumMap<TrackEventType, TrackEventInfo>) trackEventType, (TrackEventType) trackEventInfo);
    }
}
