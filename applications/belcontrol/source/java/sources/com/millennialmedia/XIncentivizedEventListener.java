package com.millennialmedia;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/XIncentivizedEventListener.class */
public interface XIncentivizedEventListener {

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/XIncentivizedEventListener$XIncentiveEvent.class */
    public static class XIncentiveEvent {
        public static final String INCENTIVE_VIDEO_COMPLETE = "IncentiveVideoComplete";
        public final String args;
        public final String eventId;

        public XIncentiveEvent(String str, String str2) {
            this.eventId = str;
            this.args = str2;
        }
    }

    boolean onCustomEvent(XIncentiveEvent xIncentiveEvent);

    boolean onVideoComplete();
}
