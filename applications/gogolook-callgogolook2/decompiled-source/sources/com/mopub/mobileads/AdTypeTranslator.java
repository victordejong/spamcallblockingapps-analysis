package com.mopub.mobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdType;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdTypeTranslator.class */
public class AdTypeTranslator {
    public static final String BANNER_SUFFIX = "_banner";
    public static final String INTERSTITIAL_SUFFIX = "_interstitial";

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdTypeTranslator$CustomEventType.class */
    public enum CustomEventType {
        GOOGLE_PLAY_SERVICES_BANNER("admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner", false),
        GOOGLE_PLAY_SERVICES_INTERSTITIAL("admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial", false),
        MRAID_BANNER("mraid_banner", "com.mopub.mraid.MraidBanner", true),
        MRAID_INTERSTITIAL("mraid_interstitial", "com.mopub.mraid.MraidInterstitial", true),
        HTML_BANNER("html_banner", "com.mopub.mobileads.HtmlBanner", true),
        HTML_INTERSTITIAL("html_interstitial", "com.mopub.mobileads.HtmlInterstitial", true),
        VAST_VIDEO_INTERSTITIAL("vast_interstitial", "com.mopub.mobileads.VastVideoInterstitial", true),
        VAST_VIDEO_INTERSTITIAL_TWO("vast_interstitial_two", "com.mopub.mobileads.VastVideoInterstitialTwo", true),
        MOPUB_NATIVE("mopub_native", "com.mopub.nativeads.MoPubCustomEventNative", true),
        MOPUB_VIDEO_NATIVE("mopub_video_native", "com.mopub.nativeads.MoPubCustomEventVideoNative", true),
        MOPUB_REWARDED_VIDEO(AdType.REWARDED_VIDEO, "com.mopub.mobileads.MoPubRewardedVideo", true),
        MOPUB_REWARDED_VIDEO_TWO("rewarded_video_two", "com.mopub.mobileads.MoPubRewardedVideoTwo", true),
        MOPUB_REWARDED_PLAYABLE(AdType.REWARDED_PLAYABLE, "com.mopub.mobileads.MoPubRewardedPlayable", true),
        UNSPECIFIED("", null, false);
        
        @NonNull

        /* renamed from: a */
        public final String f8382a;
        @Nullable

        /* renamed from: b */
        public final String f8383b;

        /* renamed from: c */
        public final boolean f8384c;

        CustomEventType(String str, String str2, boolean z) {
            this.f8382a = str;
            this.f8383b = str2;
            this.f8384c = z;
        }

        /* renamed from: b */
        public static CustomEventType m30622b(@Nullable String str) {
            CustomEventType[] values;
            for (CustomEventType customEventType : values()) {
                String str2 = customEventType.f8383b;
                if (str2 != null && str2.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        /* renamed from: c */
        public static CustomEventType m30621c(@Nullable String str) {
            CustomEventType[] values;
            for (CustomEventType customEventType : values()) {
                if (customEventType.f8382a.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        public static boolean isMoPubSpecific(@Nullable String str) {
            return m30622b(str).f8384c;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f8383b;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00cc, code lost:
        if (r0.equals(com.mopub.common.AdType.STATIC_NATIVE) != false) goto L_0x0105;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCustomEventName(@androidx.annotation.NonNull com.mopub.common.AdFormat r5, @androidx.annotation.NonNull java.lang.String r6, @androidx.annotation.Nullable java.lang.String r7, @androidx.annotation.Nullable org.json.JSONObject r8) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.AdTypeTranslator.getCustomEventName(com.mopub.common.AdFormat, java.lang.String, java.lang.String, org.json.JSONObject):java.lang.String");
    }
}
