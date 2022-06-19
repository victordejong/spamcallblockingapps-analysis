package com.mopub.mobileads;

import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.f0.r;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018�� \r2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\rB\u0011\b\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/mopub/mobileads/VideoTrackingEvent;", "", "", "toFloat", "()F", "", "a", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "START", "FIRST_QUARTILE", "MIDPOINT", "THIRD_QUARTILE", "COMPLETE", "COMPANION_AD_VIEW", "COMPANION_AD_CLICK", "UNKNOWN", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent.class */
public enum VideoTrackingEvent {
    START(AnalyticsConstants.START),
    FIRST_QUARTILE("firstQuartile"),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE("thirdQuartile"),
    COMPLETE(AnalyticsConstants.COMPLETE),
    COMPANION_AD_VIEW("companionAdView"),
    COMPANION_AD_CLICK("companionAdClick"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public final String f8962a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/mopub/mobileads/VideoTrackingEvent$Companion;", "", "", AnalyticsConstants.NAME, "Lcom/mopub/mobileads/VideoTrackingEvent;", "fromString", "(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final VideoTrackingEvent fromString(String str) {
            VideoTrackingEvent videoTrackingEvent;
            VideoTrackingEvent[] values = VideoTrackingEvent.values();
            int i = 0;
            while (true) {
                if (i >= 8) {
                    videoTrackingEvent = null;
                    break;
                }
                VideoTrackingEvent videoTrackingEvent2 = values[i];
                if (r.n(videoTrackingEvent2.getValue(), str, true)) {
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

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            VideoTrackingEvent.values();
            $EnumSwitchMapping$0 = r0;
            VideoTrackingEvent videoTrackingEvent = VideoTrackingEvent.FIRST_QUARTILE;
            VideoTrackingEvent videoTrackingEvent2 = VideoTrackingEvent.MIDPOINT;
            VideoTrackingEvent videoTrackingEvent3 = VideoTrackingEvent.THIRD_QUARTILE;
            VideoTrackingEvent videoTrackingEvent4 = VideoTrackingEvent.COMPLETE;
            int[] iArr = {0, 1, 2, 3, 4};
        }
    }

    VideoTrackingEvent(String str) {
        this.f8962a = str;
    }

    public final String getValue() {
        return this.f8962a;
    }

    public final float toFloat() {
        int ordinal = ordinal();
        return ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? 0.0f : 1.0f : 0.75f : 0.5f : 0.25f;
    }
}
