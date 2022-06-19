package com.mopub.mobileads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\n\b\u0086\u0001\u0018�� \u00112\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, m4298d2 = {"Lcom/mopub/mobileads/VideoTrackingEvent;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "toFloat", "", "START", "FIRST_QUARTILE", "MIDPOINT", "THIRD_QUARTILE", "COMPLETE", "COMPANION_AD_VIEW", "COMPANION_AD_CLICK", "UNKNOWN", "Companion", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent.class */
public enum VideoTrackingEvent {
    START(EventConstants.START),
    FIRST_QUARTILE(EventConstants.FIRST_QUARTILE),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE(EventConstants.THIRD_QUARTILE),
    COMPLETE(EventConstants.COMPLETE),
    COMPANION_AD_VIEW("companionAdView"),
    COMPANION_AD_CLICK("companionAdClick"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m4298d2 = {"Lcom/mopub/mobileads/VideoTrackingEvent$Companion;", "", "()V", "fromString", "Lcom/mopub/mobileads/VideoTrackingEvent;", "name", "", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
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
                if (C18425p.m3961a(videoTrackingEvent2.getValue(), str)) {
                    videoTrackingEvent = videoTrackingEvent2;
                    break;
                }
                i++;
            }
            VideoTrackingEvent videoTrackingEvent3 = videoTrackingEvent;
            if (videoTrackingEvent == null) {
                videoTrackingEvent3 = VideoTrackingEvent.UNKNOWN;
            }
            return videoTrackingEvent3;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$WhenMappings.class */
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
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final float toFloat() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 0.5f;
            }
            if (i == 3) {
                return 0.75f;
            }
            if (i == 4) {
                return 1.0f;
            }
            return BitmapDescriptorFactory.HUE_RED;
        }
        return 0.25f;
    }
}
