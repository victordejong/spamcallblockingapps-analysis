package net.pubnative.lite.sdk.utils;

import android.os.Bundle;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import net.pubnative.lite.sdk.models.Ad;
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

    public static String getAppMonetBiddingInterstitialKeywords(Ad ad) {
        StringBuilder sb = new StringBuilder();
        Integer valueOf = Integer.valueOf(ad.getECPM() != null ? ad.getECPM().intValue() : 0);
        if (valueOf.intValue() < 1000) {
            sb.append("mm_10:");
            sb.append(getBidECPM(ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 2000) {
            sb.append("mm_50:");
            sb.append(getBidECPM(ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 10000) {
            sb.append("mm_1d:");
            sb.append(getBidECPM(ad, KeywordMode.TWO_DECIMALS));
        } else {
            sb.append("mm_gte_10d:true");
        }
        return sb.toString();
    }

    public static String getAppMonetBiddingKeywords(Ad ad) {
        StringBuilder sb = new StringBuilder();
        Integer valueOf = Integer.valueOf(ad.getECPM() != null ? ad.getECPM().intValue() : 0);
        if (valueOf.intValue() < 1000) {
            sb.append("mm_10:");
            sb.append(getBidECPM(ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 2000) {
            sb.append("mm_50:");
            sb.append(getBidECPM(ad, KeywordMode.TWO_DECIMALS));
        } else if (valueOf.intValue() < 5000) {
            sb.append("mm_1d:");
            sb.append(getBidECPM(ad, KeywordMode.TWO_DECIMALS));
        } else {
            sb.append("mm_gte_5d:true");
        }
        return sb.toString();
    }

    private static String getBidECPM(Ad ad, KeywordMode keywordMode) {
        return String.format(Locale.ENGLISH, keywordMode == KeywordMode.TWO_DECIMALS ? "%.2f" : "%.3f", Double.valueOf(ad.getECPM().doubleValue() / ECPM_POINTS_DIVIDER));
    }

    public static String getBidFromPoints(Integer num, PrebidUtils.KeywordMode keywordMode) {
        return String.format(Locale.ENGLISH, keywordMode == PrebidUtils.KeywordMode.TWO_DECIMALS ? "%.2f" : "%.3f", Double.valueOf(num.doubleValue() / ECPM_POINTS_DIVIDER));
    }

    public static String getHeaderBiddingKeywords(Ad ad) {
        return getHeaderBiddingKeywords(ad, "");
    }

    public static String getHeaderBiddingKeywords(Ad ad, String str) {
        return getHeaderBiddingKeywords(ad, str, KeywordMode.THREE_DECIMALS);
    }

    public static String getHeaderBiddingKeywords(Ad ad, String str, KeywordMode keywordMode) {
        return "pn_bid:" + getBidECPM(ad, keywordMode);
    }

    public static String getHeaderBiddingKeywords(Ad ad, KeywordMode keywordMode) {
        return getHeaderBiddingKeywords(ad, "", keywordMode);
    }

    public static Bundle getHeaderBiddingKeywordsBundle(Ad ad) {
        return getHeaderBiddingKeywordsBundle(ad, "");
    }

    public static Bundle getHeaderBiddingKeywordsBundle(Ad ad, String str) {
        return getHeaderBiddingKeywordsBundle(ad, str, KeywordMode.THREE_DECIMALS);
    }

    public static Bundle getHeaderBiddingKeywordsBundle(Ad ad, String str, KeywordMode keywordMode) {
        Bundle bundle = new Bundle();
        bundle.putString(KEYS.PN_BID, getBidECPM(ad, keywordMode));
        return bundle;
    }

    public static Bundle getHeaderBiddingKeywordsBundle(Ad ad, KeywordMode keywordMode) {
        return getHeaderBiddingKeywordsBundle(ad, "", keywordMode);
    }

    public static Set<String> getHeaderBiddingKeywordsSet(Ad ad) {
        return getHeaderBiddingKeywordsSet(ad, "");
    }

    public static Set<String> getHeaderBiddingKeywordsSet(Ad ad, String str) {
        return getHeaderBiddingKeywordsSet(ad, str, KeywordMode.THREE_DECIMALS);
    }

    public static Set<String> getHeaderBiddingKeywordsSet(Ad ad, String str, KeywordMode keywordMode) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(3);
        linkedHashSet.add("pn_bid:".concat(getBidECPM(ad, keywordMode)));
        return linkedHashSet;
    }

    public static Set<String> getHeaderBiddingKeywordsSet(Ad ad, KeywordMode keywordMode) {
        return getHeaderBiddingKeywordsSet(ad, "", keywordMode);
    }
}
