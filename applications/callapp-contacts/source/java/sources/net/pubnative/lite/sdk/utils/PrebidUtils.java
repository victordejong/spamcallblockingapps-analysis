package net.pubnative.lite.sdk.utils;

import android.os.Bundle;
import java.util.Set;
import net.pubnative.lite.sdk.models.C20576Ad;
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

    public static String getPrebidKeywords(C20576Ad c20576Ad) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(c20576Ad);
    }

    public static String getPrebidKeywords(C20576Ad c20576Ad, String str) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(c20576Ad, str);
    }

    public static String getPrebidKeywords(C20576Ad c20576Ad, String str, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(c20576Ad, str, mapKeywordMode(keywordMode));
    }

    public static String getPrebidKeywords(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywords(c20576Ad, mapKeywordMode(keywordMode));
    }

    public static Bundle getPrebidKeywordsBundle(C20576Ad c20576Ad) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(c20576Ad);
    }

    public static Bundle getPrebidKeywordsBundle(C20576Ad c20576Ad, String str) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(c20576Ad, str);
    }

    public static Bundle getPrebidKeywordsBundle(C20576Ad c20576Ad, String str, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(c20576Ad, str, mapKeywordMode(keywordMode));
    }

    public static Bundle getPrebidKeywordsBundle(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsBundle(c20576Ad, mapKeywordMode(keywordMode));
    }

    public static Set<String> getPrebidKeywordsSet(C20576Ad c20576Ad) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(c20576Ad);
    }

    public static Set<String> getPrebidKeywordsSet(C20576Ad c20576Ad, String str) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(c20576Ad, str);
    }

    public static Set<String> getPrebidKeywordsSet(C20576Ad c20576Ad, String str, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(c20576Ad, str, mapKeywordMode(keywordMode));
    }

    public static Set<String> getPrebidKeywordsSet(C20576Ad c20576Ad, KeywordMode keywordMode) {
        return HeaderBiddingUtils.getHeaderBiddingKeywordsSet(c20576Ad, mapKeywordMode(keywordMode));
    }

    private static HeaderBiddingUtils.KeywordMode mapKeywordMode(KeywordMode keywordMode) {
        return keywordMode == KeywordMode.TWO_DECIMALS ? HeaderBiddingUtils.KeywordMode.TWO_DECIMALS : HeaderBiddingUtils.KeywordMode.THREE_DECIMALS;
    }
}
