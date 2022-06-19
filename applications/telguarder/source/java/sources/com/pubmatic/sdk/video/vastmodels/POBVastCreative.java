package com.pubmatic.sdk.video.vastmodels;

import androidx.core.app.NotificationCompat;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastCreative.class */
public abstract class POBVastCreative implements POBXMLNodeListener {
    protected String mClickThroughURL;
    protected List<String> mClickTrackers;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType.class */
    public enum CreativeType {
        LINEAR,
        NONLINEAR,
        COMPANION
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes.class */
    public enum POBEventTypes {
        CREATIVE_VIEW("creativeview"),
        START("start"),
        FIRST_QUARTILE("firstquartile"),
        MID_POINT("midpoint"),
        THIRD_QUARTILE("thirdQuartile"),
        COMPLETE("complete"),
        MUTE("mute"),
        UNMUTE("unmute"),
        PAUSE("pause"),
        REWIND("rewind"),
        RESUME("resume"),
        FULL_SCREEN("fullscreen"),
        EXIT_FULL_SCREEN("exitFullscreen"),
        EXPAND("expand"),
        COLLAPSE("collapse"),
        ACCEPT_INVITATION_LINEAR("acceptInvitationLinear"),
        CLOSE_LINEAR("closeLinear"),
        SKIP("skip"),
        PROGRESS(NotificationCompat.CATEGORY_PROGRESS),
        AD_EXPAND("adExpand"),
        AD_COLLAPSE("adCollapse"),
        MINIMIZE("minimize"),
        OVERLAY_VIEW_DURATION("overlayViewDuration"),
        CLOSE("close"),
        OTHER_AD_INTERACTION("otherAdInteraction"),
        LOADED("loaded"),
        PLAYER_EXPAND("playerExpand"),
        PLAYER_COLLAPSE("playerCollapse"),
        NOT_USED("notUsed");
        

        /* renamed from: a */
        private String f1074a;

        POBEventTypes(String str) {
            this.f1074a = str;
        }

        public String getValue() {
            return this.f1074a;
        }
    }

    public String getClickThroughURL() {
        return this.mClickThroughURL;
    }

    public List<String> getClickTrackers() {
        return this.mClickTrackers;
    }

    public List<String> getTrackingEventUrls(POBEventTypes pOBEventTypes) {
        ArrayList arrayList = new ArrayList();
        for (POBTracking pOBTracking : getTrackingEvents(pOBEventTypes)) {
            arrayList.add(pOBTracking.getUrl());
        }
        return arrayList;
    }

    abstract List<POBTracking> getTrackingEvents();

    public List<POBTracking> getTrackingEvents(POBEventTypes pOBEventTypes) {
        ArrayList arrayList = new ArrayList();
        List<POBTracking> trackingEvents = getTrackingEvents();
        if (trackingEvents != null) {
            for (POBTracking pOBTracking : trackingEvents) {
                if (pOBTracking.getEvent() != null && pOBTracking.getEvent().equalsIgnoreCase(pOBEventTypes.getValue())) {
                    arrayList.add(pOBTracking);
                }
            }
        }
        return arrayList;
    }

    public abstract CreativeType getVastCreativeType();
}
