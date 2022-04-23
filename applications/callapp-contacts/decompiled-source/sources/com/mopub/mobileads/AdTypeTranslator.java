package com.mopub.mobileads;

import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.Preconditions;
import com.mopub.common.util.ResponseHeader;
import com.mopub.network.HeaderUtils;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdTypeTranslator.class */
public class AdTypeTranslator {
    public static final String BANNER_SUFFIX = "_banner";
    public static final String INTERSTITIAL_SUFFIX = "_interstitial";

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdTypeTranslator$BaseAdType.class */
    public enum BaseAdType {
        GOOGLE_PLAY_SERVICES_BANNER("admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner", false),
        GOOGLE_PLAY_SERVICES_INTERSTITIAL("admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial", false),
        MOPUB_NATIVE("mopub_native", "com.mopub.nativeads.MoPubCustomEventNative", true),
        MOPUB_INLINE("mopub_inline", "com.mopub.mobileads.MoPubInline", true),
        MOPUB_FULLSCREEN("fullscreen", "com.mopub.mobileads.MoPubFullscreen", true),
        UNSPECIFIED("", null, false);
        
        private final String mClassName;
        private final boolean mIsMoPubSpecific;
        private final String mKey;

        BaseAdType(String str, String str2, boolean z) {
            this.mKey = str;
            this.mClassName = str2;
            this.mIsMoPubSpecific = z;
        }

        private static BaseAdType fromClassName(String str) {
            BaseAdType[] values;
            for (BaseAdType baseAdType : values()) {
                String str2 = baseAdType.mClassName;
                if (str2 != null && str2.equals(str)) {
                    return baseAdType;
                }
            }
            return UNSPECIFIED;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static BaseAdType fromString(String str) {
            BaseAdType[] values;
            for (BaseAdType baseAdType : values()) {
                if (baseAdType.mKey.equals(str)) {
                    return baseAdType;
                }
            }
            return UNSPECIFIED;
        }

        public static boolean isMoPubSpecific(String str) {
            return fromClassName(str).mIsMoPubSpecific;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.mClassName;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String getBaseAdClassName(AdFormat adFormat, String str, String str2, JSONObject jSONObject) {
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(str);
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        char c2 = 65535;
        switch (lowerCase.hashCode()) {
            case -1364000502:
                if (lowerCase.equals(AdType.REWARDED_VIDEO)) {
                    c2 = 0;
                    break;
                }
                break;
            case -1349088399:
                if (lowerCase.equals(AdType.CUSTOM)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3213227:
                if (lowerCase.equals(AdType.HTML)) {
                    c2 = 2;
                    break;
                }
                break;
            case 3271912:
                if (lowerCase.equals("json")) {
                    c2 = 3;
                    break;
                }
                break;
            case 104156535:
                if (lowerCase.equals("mraid")) {
                    c2 = 4;
                    break;
                }
                break;
            case 110066619:
                if (lowerCase.equals("fullscreen")) {
                    c2 = 5;
                    break;
                }
                break;
            case 474479519:
                if (lowerCase.equals(AdType.REWARDED_PLAYABLE)) {
                    c2 = 6;
                    break;
                }
                break;
            case 604727084:
                if (lowerCase.equals(AdType.INTERSTITIAL)) {
                    c2 = 7;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 5:
            case 6:
                break;
            case 1:
                return HeaderUtils.extractHeader(jSONObject, ResponseHeader.CUSTOM_EVENT_NAME);
            case 2:
            case 4:
                return (AdFormat.BANNER.equals(adFormat) ? BaseAdType.MOPUB_INLINE : BaseAdType.MOPUB_FULLSCREEN).toString();
            case 3:
                return BaseAdType.MOPUB_NATIVE.toString();
            case 7:
                if ("admob_full".equals(str2)) {
                    return BaseAdType.fromString(str2 + INTERSTITIAL_SUFFIX).toString();
                }
                break;
            default:
                return BaseAdType.fromString(str + BANNER_SUFFIX).toString();
        }
        return BaseAdType.MOPUB_FULLSCREEN.toString();
    }
}
