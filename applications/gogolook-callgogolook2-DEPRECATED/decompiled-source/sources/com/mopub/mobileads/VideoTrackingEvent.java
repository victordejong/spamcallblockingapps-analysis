package com.mopub.mobileads;

import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\n\b\u0086\u0001\u0018�� \u00112\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, m815d2 = {"Lcom/mopub/mobileads/VideoTrackingEvent;", "", C13032a.f29462d, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "toFloat", "", "START", "FIRST_QUARTILE", "MIDPOINT", "THIRD_QUARTILE", "COMPLETE", "COMPANION_AD_VIEW", "COMPANION_AD_CLICK", "UNKNOWN", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent.class */
public enum VideoTrackingEvent {
    START("start"),
    FIRST_QUARTILE("firstQuartile"),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE("thirdQuartile"),
    COMPLETE("complete"),
    COMPANION_AD_VIEW("companionAdView"),
    COMPANION_AD_CLICK("companionAdClick"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    public final String f8815a;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m815d2 = {"Lcom/mopub/mobileads/VideoTrackingEvent$Companion;", "", "()V", "fromString", "Lcom/mopub/mobileads/VideoTrackingEvent;", "name", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
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
                if (C14966w.m715b(videoTrackingEvent2.getValue(), str, true)) {
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

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[VideoTrackingEvent.values().length];

        static {
            $EnumSwitchMapping$0[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 1;
            $EnumSwitchMapping$0[VideoTrackingEvent.MIDPOINT.ordinal()] = 2;
            $EnumSwitchMapping$0[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 3;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPLETE.ordinal()] = 4;
        }
    }

    VideoTrackingEvent(String str) {
        this.f8815a = str;
    }

    public final String getValue() {
        return this.f8815a;
    }

    public final float toFloat() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? 0.0f : 1.0f : 0.75f : 0.5f : 0.25f;
    }
}
