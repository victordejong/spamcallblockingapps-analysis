package net.pubnative.lite.sdk.utils;

import android.os.Bundle;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.utils.PrebidUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/HeaderBiddingUtils.class */
public class HeaderBiddingUtils {
    private static final double ECPM_POINTS_DIVIDER = 1000.0d;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/HeaderBiddingUtils$KEYS.class */
    public interface KEYS {
        public static final String PN_BID = "pn_bid";
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/HeaderBiddingUtils$KeywordMode.class */
    public enum KeywordMode {
        TWO_DECIMALS,
        THREE_DECIMALS
    }

    public static String getAppMonetBiddingInterstitialKeywords(C20576Ad c20576Ad) {
        StringBuilder sb = new StringBuilder();
        Integer valueOf = Integer.valueOf(c20576Ad.getECPM() != null ? c20576Ad.getECPM().intValue() : 0);
        if (valueOf.intValue() < 1000) {
            sb.append("mm_10:");
            sb.append(getBidECPM(c20576Ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 2000) {
            sb.append("mm_50:");
            sb.append(getBidECPM(c20576Ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 10000) {
            sb.append("mm_1d:");
            sb.append(getBidECPM(c20576Ad, KeywordMode.TWO_DECIMALS));
        } else {
            sb.append("mm_gte_10d:true");
        }
        return sb.toString();
    }

    public static String getAppMonetBiddingKeywords(C20576Ad c20576Ad) {
        StringBuilder sb = new StringBuilder();
        Integer valueOf = Integer.valueOf(c20576Ad.getECPM() != null ? c20576Ad.getECPM().intValue() : 0);
        if (valueOf.intValue() < 1000) {
            sb.append("mm_10:");
            sb.append(getBidECPM(c20576Ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 2000) {
            sb.append("mm_50:");
            sb.append(getBidECPM(c20576Ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 5000) {
            sb.append("mm_1d:");
            sb.append(getBidECPM(c20576Ad, KeywordMode.TWO_DECIMALS));
        } else {
            sb.append("mm_gte_5d:true");
        }
        return sb.toString();
    }

    private static String getBidECPM(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return String.format(Locale.ENGLISH, keywordMode == KeywordMode.TWO_DECIMALS ? "%.2f" : "%.3f", Double.valueOf(c20576Ad.getECPM().doubleValue() / ECPM_POINTS_DIVIDER));
    }

    public static String getBidFromPoints(Integer num, PrebidUtils.KeywordMode keywordMode) {
        return String.format(Locale.ENGLISH, keywordMode == PrebidUtils.KeywordMode.TWO_DECIMALS ? "%.2f" : "%.3f", Double.valueOf(num.doubleValue() / ECPM_POINTS_DIVIDER));
    }

    public static String getHeaderBiddingKeywords(C20576Ad c20576Ad) {
        return getHeaderBiddingKeywords(c20576Ad, "");
    }

    public static String getHeaderBiddingKeywords(C20576Ad c20576Ad, String str) {
        return getHeaderBiddingKeywords(c20576Ad, str, KeywordMode.THREE_DECIMALS);
    }

    public static String getHeaderBiddingKeywords(C20576Ad c20576Ad, String str, KeywordMode keywordMode) {
        return "pn_bid:" + getBidECPM(c20576Ad, keywordMode);
    }

    public static String getHeaderBiddingKeywords(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return getHeaderBiddingKeywords(c20576Ad, "", keywordMode);
    }

    public static Bundle getHeaderBiddingKeywordsBundle(C20576Ad c20576Ad) {
        return getHeaderBiddingKeywordsBundle(c20576Ad, "");
    }

    public static Bundle getHeaderBiddingKeywordsBundle(C20576Ad c20576Ad, String str) {
        return getHeaderBiddingKeywordsBundle(c20576Ad, str, KeywordMode.THREE_DECIMALS);
    }

    public static Bundle getHeaderBiddingKeywordsBundle(C20576Ad c20576Ad, String str, KeywordMode keywordMode) {
        Bundle bundle = new Bundle();
        bundle.putString(KEYS.PN_BID, getBidECPM(c20576Ad, keywordMode));
        return bundle;
    }

    public static Bundle getHeaderBiddingKeywordsBundle(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return getHeaderBiddingKeywordsBundle(c20576Ad, "", keywordMode);
    }

    public static Set<String> getHeaderBiddingKeywordsSet(C20576Ad c20576Ad) {
        return getHeaderBiddingKeywordsSet(c20576Ad, "");
    }

    public static Set<String> getHeaderBiddingKeywordsSet(C20576Ad c20576Ad, String str) {
        return getHeaderBiddingKeywordsSet(c20576Ad, str, KeywordMode.THREE_DECIMALS);
    }

    public static Set<String> getHeaderBiddingKeywordsSet(C20576Ad c20576Ad, String str, KeywordMode keywordMode) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(3);
        linkedHashSet.add("pn_bid:".concat(getBidECPM(c20576Ad, keywordMode)));
        return linkedHashSet;
    }

    public static Set<String> getHeaderBiddingKeywordsSet(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return getHeaderBiddingKeywordsSet(c20576Ad, "", keywordMode);
    }
}
