package io.bidmachine.models;

import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.TrackEventType;
import io.bidmachine.Utils;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.unified.UnifiedMediationParams;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/AdObjectParams.class */
public abstract class AdObjectParams {
    private static final boolean DEF_VIEWABILITY_IGNORE_WINDOW_FOCUS = false;
    private static final float DEF_VIEWABILITY_PIXEL_THRESHOLD = 1.0f;
    private static final long DEF_VIEWABILITY_TIME_THRESHOLD = 1;
    private long viewabilityTimeThresholdSec = 1;
    private float viewabilityPixelThreshold = 1.0f;
    private boolean viewabilityIgnoreWindowFocus = false;
    private Map<TrackEventType, List<String>> trackUrls = new EnumMap(TrackEventType.class);

    public AdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        if (c9813Ad.getExtProtoCount() > 0) {
            for (int i = 0; i < c9813Ad.getExtProtoCount(); i++) {
                if (c9813Ad.getExtProto(i).m23822is(AdExtension.class)) {
                    try {
                        prepareExtensions(seatbid, bid, (AdExtension) c9813Ad.getExtProto(i).unpack(AdExtension.class));
                    } catch (InvalidProtocolBufferException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public void addEvent(TrackEventType trackEventType, String str) {
        List<String> list = this.trackUrls.get(trackEventType);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList(1);
            this.trackUrls.put(trackEventType, arrayList);
        }
        arrayList.add(str);
    }

    public List<String> getTrackUrls(TrackEventType trackEventType) {
        return this.trackUrls.get(trackEventType);
    }

    public float getViewabilityPixelThreshold() {
        return this.viewabilityPixelThreshold;
    }

    public long getViewabilityTimeThresholdMs() {
        return TimeUnit.SECONDS.toMillis(this.viewabilityTimeThresholdSec);
    }

    public abstract boolean isValid();

    public boolean isViewabilityIgnoreWindowFocus() {
        return this.viewabilityIgnoreWindowFocus;
    }

    public void prepareEvents(List<C9813Ad.Event> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (C9813Ad.Event event : list) {
            TrackEventType fromNumber = TrackEventType.fromNumber(event.getTypeValue());
            if (fromNumber != null) {
                addEvent(fromNumber, event.getUrl());
            }
        }
    }

    public void prepareExtensions(Response.Seatbid seatbid, Response.Seatbid.Bid bid, AdExtension adExtension) {
        this.viewabilityTimeThresholdSec = Utils.getOrDefault(adExtension.getViewabilityTimeThreshold(), AdExtension.getDefaultInstance().getViewabilityTimeThreshold(), 1L);
        this.viewabilityPixelThreshold = Utils.getOrDefault(adExtension.getViewabilityPixelThreshold(), AdExtension.getDefaultInstance().getViewabilityPixelThreshold(), 1.0f);
        this.viewabilityIgnoreWindowFocus = adExtension.getViewabilityIgnoreWindowFocus();
        prepareEvents(adExtension.getEventList());
    }

    public abstract UnifiedMediationParams toMediationParams();
}
