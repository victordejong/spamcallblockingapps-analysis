package com.mopub.mobileads;

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
        
        public final String mClassName;
        public final boolean mIsMoPubSpecific;
        public final String mKey;

        CustomEventType(String str, String str2, boolean z) {
            this.mKey = str;
            this.mClassName = str2;
            this.mIsMoPubSpecific = z;
        }

        public static CustomEventType fromClassName(String str) {
            CustomEventType[] values;
            for (CustomEventType customEventType : values()) {
                String str2 = customEventType.mClassName;
                if (str2 != null && str2.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        public static CustomEventType fromString(String str) {
            CustomEventType[] values;
            for (CustomEventType customEventType : values()) {
                if (customEventType.mKey.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        public static boolean isMoPubSpecific(String str) {
            return fromClassName(str).mIsMoPubSpecific;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mClassName;
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
    public static java.lang.String getCustomEventName(com.mopub.common.AdFormat r5, java.lang.String r6, java.lang.String r7, org.json.JSONObject r8) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.AdTypeTranslator.getCustomEventName(com.mopub.common.AdFormat, java.lang.String, java.lang.String, org.json.JSONObject):java.lang.String");
    }
}
