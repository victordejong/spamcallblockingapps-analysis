package io.bidmachine.models;

import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.adcom.Ad;
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

    public AdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad) {
        if (ad.getExtProtoCount() > 0) {
            for (int i = 0; i < ad.getExtProtoCount(); i++) {
                if (ad.getExtProto(i).is(AdExtension.class)) {
                    try {
                        prepareExtensions(seatbid, bid, (AdExtension) ad.getExtProto(i).unpack(AdExtension.class));
                    } catch (InvalidProtocolBufferException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addEvent(TrackEventType trackEventType, String str) {
        List<String> list = this.trackUrls.get(trackEventType);
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>(1);
            this.trackUrls.put(trackEventType, list2);
        }
        list2.add(str);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepareEvents(List<Ad.Event> list) {
        if (!(list == null || list.size() == 0)) {
            for (Ad.Event event : list) {
                TrackEventType fromNumber = TrackEventType.fromNumber(event.getTypeValue());
                if (fromNumber != null) {
                    addEvent(fromNumber, event.getUrl());
                }
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
