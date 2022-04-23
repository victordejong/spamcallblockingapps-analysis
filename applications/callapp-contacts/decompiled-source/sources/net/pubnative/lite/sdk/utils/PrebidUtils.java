package net.pubnative.lite.sdk.utils;

import android.os.Bundle;
import java.util.Set;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.utils.HeaderBiddingUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PrebidUtils.class */
public class PrebidUtils {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PrebidUtils$KeywordMode.class */
    public enum KeywordMode {
        TWO_DECIMALS,
        THREE_DECIMALS
    }

    public static String getBidFromPoints(Integer num, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getBidFromPoints(num, keywordMode);
    }

    public static String getPrebidKeywords(Ad ad) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(ad);
    }

    public static String getPrebidKeywords(Ad ad, String str) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(ad, str);
    }

    public static String getPrebidKeywords(Ad ad, String str, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(ad, str, mapKeywordMode(keywordMode));
    }

    public static String getPrebidKeywords(Ad ad, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(ad, mapKeywordMode(keywordMode));
    }

    public static Bundle getPrebidKeywordsBundle(Ad ad) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(ad);
    }

    public static Bundle getPrebidKeywordsBundle(Ad ad, String str) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(ad, str);
    }

    public static Bundle getPrebidKeywordsBundle(Ad ad, String str, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(ad, str, mapKeywordMode(keywordMode));
    }

    public static Bundle getPrebidKeywordsBundle(Ad ad, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(ad, mapKeywordMode(keywordMode));
    }

    public static Set<String> getPrebidKeywordsSet(Ad ad) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(ad);
    }

    public static Set<String> getPrebidKeywordsSet(Ad ad, String str) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(ad, str);
    }

    public static Set<String> getPrebidKeywordsSet(Ad ad, String str, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(ad, str, mapKeywordMode(keywordMode));
    }

    public static Set<String> getPrebidKeywordsSet(Ad ad, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(ad, mapKeywordMode(keywordMode));
    }

    private static HeaderBiddingUtils.KeywordMode mapKeywordMode(KeywordMode keywordMode) {
        return keywordMode == KeywordMode.TWO_DECIMALS ? HeaderBiddingUtils.KeywordMode.TWO_DECIMALS : HeaderBiddingUtils.KeywordMode.THREE_DECIMALS;
    }
}
