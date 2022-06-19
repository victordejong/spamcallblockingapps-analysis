package com.mopub.mobileads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent.class */
public enum VideoTrackingEvent {
    START(TtmlNode.START),
    FIRST_QUARTILE("firstQuartile"),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE("thirdQuartile"),
    COMPLETE("complete"),
    COMPANION_AD_VIEW("companionAdView"),
    COMPANION_AD_CLICK("companionAdClick"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public final String f4974a;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final VideoTrackingEvent fromString(String str) {
            VideoTrackingEvent videoTrackingEvent;
            VideoTrackingEvent[] values = VideoTrackingEvent.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    videoTrackingEvent = null;
                    break;
                }
                VideoTrackingEvent videoTrackingEvent2 = values[i];
                if (sl1.m559b(videoTrackingEvent2.getValue(), str, true)) {
                    videoTrackingEvent = videoTrackingEvent2;
                    break;
                }
                i++;
            }
            if (videoTrackingEvent == null) {
                videoTrackingEvent = VideoTrackingEvent.UNKNOWN;
            }
            return videoTrackingEvent;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoTrackingEvent.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 1;
            iArr[VideoTrackingEvent.MIDPOINT.ordinal()] = 2;
            iArr[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 3;
            iArr[VideoTrackingEvent.COMPLETE.ordinal()] = 4;
        }
    }

    VideoTrackingEvent(String str) {
        this.f4974a = str;
    }

    public final String getValue() {
        return this.f4974a;
    }

    public final float toFloat() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? 0.0f : 1.0f : 0.75f : 0.5f : 0.25f;
    }
}
