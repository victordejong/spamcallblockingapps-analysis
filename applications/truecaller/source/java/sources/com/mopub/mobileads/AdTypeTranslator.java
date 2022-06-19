package com.mopub.mobileads;

import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.Preconditions;
import com.mopub.common.util.ResponseHeader;
import com.mopub.network.HeaderUtils;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdTypeTranslator.class */
public class AdTypeTranslator {
    public static final String BANNER_SUFFIX = "_banner";
    public static final String INTERSTITIAL_SUFFIX = "_interstitial";

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdTypeTranslator$BaseAdType.class */
    public enum BaseAdType {
        GOOGLE_PLAY_SERVICES_BANNER("admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner", false),
        GOOGLE_PLAY_SERVICES_INTERSTITIAL("admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial", false),
        MOPUB_NATIVE("mopub_native", "com.mopub.nativeads.MoPubCustomEventNative", true),
        MOPUB_INLINE("mopub_inline", "com.mopub.mobileads.MoPubInline", true),
        MOPUB_FULLSCREEN(AdType.FULLSCREEN, "com.mopub.mobileads.MoPubFullscreen", true),
        UNSPECIFIED("", null, false);
        

        /* renamed from: a */
        public final String f8771a;

        /* renamed from: b */
        public final String f8772b;

        /* renamed from: c */
        public final boolean f8773c;

        BaseAdType(String str, String str2, boolean z) {
            this.f8771a = str;
            this.f8772b = str2;
            this.f8773c = z;
        }

        /* renamed from: a */
        public static BaseAdType m36257a(String str) {
            BaseAdType baseAdType;
            BaseAdType[] values = values();
            int i = 0;
            while (true) {
                if (i >= 6) {
                    baseAdType = UNSPECIFIED;
                    break;
                }
                BaseAdType baseAdType2 = values[i];
                if (baseAdType2.f8771a.equals(str)) {
                    baseAdType = baseAdType2;
                    break;
                }
                i++;
            }
            return baseAdType;
        }

        public static boolean isMoPubSpecific(String str) {
            BaseAdType baseAdType;
            BaseAdType[] values = values();
            int i = 0;
            while (true) {
                if (i >= 6) {
                    baseAdType = UNSPECIFIED;
                    break;
                }
                BaseAdType baseAdType2 = values[i];
                String str2 = baseAdType2.f8772b;
                if (str2 != null && str2.equals(str)) {
                    baseAdType = baseAdType2;
                    break;
                }
                i++;
            }
            return baseAdType.f8773c;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f8772b;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String getBaseAdClassName(AdFormat adFormat, String str, String str2, JSONObject jSONObject) {
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(str);
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        boolean z = true;
        switch (lowerCase.hashCode()) {
            case -1364000502:
                if (lowerCase.equals(AdType.REWARDED_VIDEO)) {
                    z = false;
                    break;
                }
                break;
            case -1349088399:
                if (lowerCase.equals(AdType.CUSTOM)) {
                    z = true;
                    break;
                }
                break;
            case 3213227:
                if (lowerCase.equals(AdType.HTML)) {
                    z = true;
                    break;
                }
                break;
            case 3271912:
                if (lowerCase.equals("json")) {
                    z = true;
                    break;
                }
                break;
            case 104156535:
                if (lowerCase.equals("mraid")) {
                    z = true;
                    break;
                }
                break;
            case 110066619:
                if (lowerCase.equals(AdType.FULLSCREEN)) {
                    z = true;
                    break;
                }
                break;
            case 474479519:
                if (lowerCase.equals(AdType.REWARDED_PLAYABLE)) {
                    z = true;
                    break;
                }
                break;
            case 604727084:
                if (lowerCase.equals("interstitial")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
                break;
            case true:
                return HeaderUtils.extractHeader(jSONObject, ResponseHeader.CUSTOM_EVENT_NAME);
            case true:
            case true:
                return (AdFormat.BANNER.equals(adFormat) ? BaseAdType.MOPUB_INLINE : BaseAdType.MOPUB_FULLSCREEN).toString();
            case true:
                return BaseAdType.MOPUB_NATIVE.toString();
            case true:
                if ("admob_full".equals(str2)) {
                    return BaseAdType.m36257a(str2 + INTERSTITIAL_SUFFIX).toString();
                }
                break;
            default:
                return BaseAdType.m36257a(str + BANNER_SUFFIX).toString();
        }
        return BaseAdType.MOPUB_FULLSCREEN.toString();
    }
}
