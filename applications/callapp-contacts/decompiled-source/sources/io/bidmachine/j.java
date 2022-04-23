package io.bidmachine;

import io.bidmachine.utils.BMError;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/j.class */
public final class j extends i {
    final Map<AdsType, a> trackingMap = new ConcurrentHashMap();
    final Map<Object, EnumMap<TrackEventType, TrackEventInfo>> intervalHolders = new ConcurrentHashMap();
    private final a totalHolder = new a(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/j$a.class */
    public static final class a {
        private final a referenceHolder;
        private final EnumMap<TrackEventType, AtomicInteger> trackingMap = new EnumMap<>(TrackEventType.class);

        a(a aVar) {
            this.referenceHolder = aVar;
        }

        public final int getCount(TrackEventType trackEventType) {
            if (this.trackingMap.containsKey(trackEventType)) {
                return this.trackingMap.get(trackEventType).get();
            }
            return 0;
        }

        public final void track(TrackEventType trackEventType) {
            a aVar = this.referenceHolder;
            if (aVar != null) {
                aVar.track(trackEventType);
            }
            if (this.trackingMap.get(trackEventType) == null) {
                this.trackingMap.put((EnumMap<TrackEventType, AtomicInteger>) trackEventType, (TrackEventType) new AtomicInteger(1));
            } else {
                this.trackingMap.get(trackEventType).incrementAndGet();
            }
        }
    }

    private a obtainHolder(AdsType adsType) {
        a aVar;
        if (!this.trackingMap.containsKey(adsType)) {
            a aVar2 = new a(this.totalHolder);
            this.trackingMap.put(adsType, aVar2);
            aVar = aVar2;
        } else {
            aVar = this.trackingMap.get(adsType);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.i
    public final void clearTrackers(TrackingObject trackingObject) {
        if (trackingObject != null) {
            this.intervalHolders.remove(trackingObject.getTrackingKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.i
    public final void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType) {
        Object trackingKey;
        EnumMap<TrackEventType, TrackEventInfo> enumMap;
        if (trackingObject != null && trackEventType != null && (trackingKey = trackingObject.getTrackingKey()) != null && (enumMap = this.intervalHolders.get(trackingKey)) != null) {
            enumMap.remove(trackEventType);
        }
    }

    @Override // io.bidmachine.i
    public final int getEventCount(AdsType adsType, TrackEventType trackEventType) {
        return obtainHolder(adsType).getCount(trackEventType);
    }

    @Override // io.bidmachine.i
    public final int getTotalEventCount(TrackEventType trackEventType) {
        return this.totalHolder.getCount(trackEventType);
    }

    @Override // io.bidmachine.i
    public final void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError) {
        Object trackingKey;
        if (trackingObject != null && trackEventType != null && (trackingKey = trackingObject.getTrackingKey()) != null) {
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
            if (adsType != null && bMError == null) {
                obtainHolder(adsType).track(trackEventType);
            }
        }
    }

    @Override // io.bidmachine.i
    public final void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType) {
        Object trackingKey;
        if (trackingObject != null && trackEventType != null && (trackingKey = trackingObject.getTrackingKey()) != null) {
            EnumMap<TrackEventType, TrackEventInfo> enumMap = this.intervalHolders.get(trackingKey);
            EnumMap<TrackEventType, TrackEventInfo> enumMap2 = enumMap;
            if (enumMap == null) {
                enumMap2 = new EnumMap<>(TrackEventType.class);
                this.intervalHolders.put(trackingKey, enumMap2);
            }
            if (!enumMap2.containsKey(trackEventType)) {
                if (trackEventInfo == null) {
                    trackEventInfo = new TrackEventInfo();
                }
                enumMap2.put((EnumMap<TrackEventType, TrackEventInfo>) trackEventType, (TrackEventType) trackEventInfo);
            }
        }
    }
}
