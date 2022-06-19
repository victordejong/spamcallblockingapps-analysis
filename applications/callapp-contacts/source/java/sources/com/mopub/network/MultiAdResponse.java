package com.mopub.network;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.ResponseHeader;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MultiAdResponse.class */
public class MultiAdResponse implements Iterator<AdResponse> {

    /* renamed from: c */
    private static ServerOverrideListener f60316c;

    /* renamed from: a */
    String f60317a;

    /* renamed from: b */
    private final Iterator<AdResponse> f60318b;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/MultiAdResponse$ServerOverrideListener.class */
    public interface ServerOverrideListener {
        void onForceExplicitNo(String str);

        void onForceGdprApplies();

        void onInvalidateConsent(String str);

        void onReacquireConsent(String str);

        void onRequestSuccess(String str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x028b, code lost:
        r0 = r0.iterator();
        r8.f60318b = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x029e, code lost:
        if (r0.hasNext() != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02a1, code lost:
        r9 = 30000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02aa, code lost:
        if (r19 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x02ad, code lost:
        r9 = r19.getRefreshTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02c1, code lost:
        throw new com.mopub.network.MoPubNetworkError("No ads found for ad unit.", com.mopub.network.MoPubNetworkError.Reason.NO_FILL, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02c2, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiAdResponse(android.content.Context r9, com.mopub.volley.NetworkResponse r10, com.mopub.common.AdFormat r11, java.lang.String r12) throws org.json.JSONException, com.mopub.network.MoPubNetworkError {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.MultiAdResponse.<init>(android.content.Context, com.mopub.volley.NetworkResponse, com.mopub.common.AdFormat, java.lang.String):void");
    }

    /* renamed from: a */
    private static AdResponse m6046a(Context context, NetworkResponse networkResponse, JSONObject jSONObject, String str, AdFormat adFormat, String str2, String str3) throws JSONException, MoPubNetworkError {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(networkResponse);
        Preconditions.checkNotNull(jSONObject);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(str2);
        MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, jSONObject.toString());
        AdResponse.Builder builder = new AdResponse.Builder();
        String optString = jSONObject.optString(ResponseHeader.CONTENT.getKey());
        JSONObject jSONObject2 = jSONObject.getJSONObject(ResponseHeader.METADATA.getKey());
        builder.setAdUnitId(str);
        builder.setResponseBody(optString);
        String extractHeader = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AD_TYPE);
        String extractHeader2 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AD_GROUP_ID);
        String extractHeader3 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.FULL_AD_TYPE);
        builder.setAdType(extractHeader);
        builder.setAdGroupId(extractHeader2);
        builder.setFullAdType(extractHeader3);
        Preconditions.checkNotNull(jSONObject);
        Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(jSONObject.getJSONObject(ResponseHeader.METADATA.getKey()), ResponseHeader.REFRESH_TIME);
        builder.setRefreshTimeMilliseconds(extractIntegerHeader == null ? null : Integer.valueOf(extractIntegerHeader.intValue() * 1000));
        if (AdType.CLEAR.equals(extractHeader)) {
            return builder.build();
        }
        builder.setDspCreativeId(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.DSP_CREATIVE_ID));
        builder.setNetworkType(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.NETWORK_TYPE));
        builder.setImpressionData(ImpressionData.m6051a(HeaderUtils.extractJsonObjectHeader(jSONObject2, ResponseHeader.IMPRESSION_DATA)));
        List<String> m6053a = HeaderUtils.m6053a(jSONObject2, ResponseHeader.CLICK_TRACKING_URL);
        if (m6053a.isEmpty()) {
            String extractHeader4 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.CLICK_TRACKING_URL);
            if (!TextUtils.isEmpty(extractHeader4) && !HttpUrl.PATH_SEGMENT_ENCODE_SET_URI.equals(extractHeader4)) {
                m6053a.add(extractHeader4);
            }
        }
        builder.setClickTrackingUrls(m6053a);
        List<String> m6053a2 = HeaderUtils.m6053a(jSONObject2, ResponseHeader.IMPRESSION_URLS);
        if (m6053a2.isEmpty()) {
            String extractHeader5 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_URL);
            if (!TextUtils.isEmpty(extractHeader5) && !HttpUrl.PATH_SEGMENT_ENCODE_SET_URI.equals(extractHeader5)) {
                m6053a2.add(extractHeader5);
            }
        }
        builder.setImpressionTrackingUrls(m6053a2);
        List<String> m6053a3 = HeaderUtils.m6053a(jSONObject2, ResponseHeader.BEFORE_LOAD_URL);
        if (m6053a3.isEmpty()) {
            String extractHeader6 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.BEFORE_LOAD_URL);
            if (!TextUtils.isEmpty(extractHeader6) && !HttpUrl.PATH_SEGMENT_ENCODE_SET_URI.equals(extractHeader6)) {
                m6053a3.add(extractHeader6);
            }
        }
        builder.setBeforeLoadUrls(m6053a3);
        List<String> m6053a4 = HeaderUtils.m6053a(jSONObject2, ResponseHeader.AFTER_LOAD_URL);
        if (m6053a4.isEmpty()) {
            String extractHeader7 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AFTER_LOAD_URL);
            if (!TextUtils.isEmpty(extractHeader7) && !HttpUrl.PATH_SEGMENT_ENCODE_SET_URI.equals(extractHeader7)) {
                m6053a4.add(extractHeader7);
            }
        }
        builder.setAfterLoadUrls(m6053a4);
        List<String> m6053a5 = HeaderUtils.m6053a(jSONObject2, ResponseHeader.AFTER_LOAD_SUCCESS_URL);
        if (m6053a5.isEmpty()) {
            String extractHeader8 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AFTER_LOAD_SUCCESS_URL);
            if (!TextUtils.isEmpty(extractHeader8) && !HttpUrl.PATH_SEGMENT_ENCODE_SET_URI.equals(extractHeader8)) {
                m6053a5.add(extractHeader8);
            }
        }
        builder.setAfterLoadSuccessUrls(m6053a5);
        List<String> m6053a6 = HeaderUtils.m6053a(jSONObject2, ResponseHeader.AFTER_LOAD_FAIL_URL);
        if (m6053a6.isEmpty()) {
            String extractHeader9 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AFTER_LOAD_FAIL_URL);
            if (!TextUtils.isEmpty(extractHeader9) && !HttpUrl.PATH_SEGMENT_ENCODE_SET_URI.equals(extractHeader9)) {
                m6053a6.add(extractHeader9);
            }
        }
        builder.setAfterLoadFailUrls(m6053a6);
        builder.setRequestId(str3);
        builder.setDimensions(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.WIDTH), HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.HEIGHT));
        builder.setAdTimeoutDelayMilliseconds(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.AD_TIMEOUT));
        if ("json".equals(extractHeader)) {
            try {
                builder.setJsonBody(new JSONObject(optString));
            } catch (JSONException e) {
                throw new MoPubNetworkError("Failed to decode body JSON for native ad format", e, MoPubNetworkError.Reason.BAD_BODY);
            }
        }
        builder.setBaseAdClassName(AdTypeTranslator.getBaseAdClassName(adFormat, extractHeader, extractHeader3, jSONObject2));
        MoPub.BrowserAgent fromHeader = MoPub.BrowserAgent.fromHeader(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.BROWSER_AGENT));
        MoPub.setBrowserAgentFromAdServer(fromHeader);
        builder.setBrowserAgent(fromHeader);
        String extractHeader10 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.CUSTOM_EVENT_DATA);
        String str4 = extractHeader10;
        if (TextUtils.isEmpty(extractHeader10)) {
            str4 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.NATIVE_PARAMS);
        }
        try {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(str4);
            try {
                if (!jSONObject2.optString("adm").isEmpty()) {
                    jsonStringToMap.put("adm", jSONObject2.getString("adm"));
                }
                jsonStringToMap.put(DataKeys.VAST_CLICK_EXP_ENABLED_KEY, Boolean.toString(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.VAST_CLICK_ENABLED, 0).intValue() == 1));
                jsonStringToMap.put("adunit_format", str2);
                if ("mraid".equals(extractHeader) || AdType.HTML.equals(extractHeader) || (AdType.INTERSTITIAL.equals(extractHeader) && FullAdType.VAST.equals(extractHeader3)) || ((AdType.INTERSTITIAL.equals(extractHeader) && "json".equals(extractHeader3)) || ((AdType.REWARDED_VIDEO.equals(extractHeader) && FullAdType.VAST.equals(extractHeader3)) || AdType.REWARDED_PLAYABLE.equals(extractHeader) || "fullscreen".equals(extractHeader)))) {
                    jsonStringToMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, optString);
                    jsonStringToMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.ORIENTATION));
                }
                builder.setAllowCustomClose(HeaderUtils.extractBooleanHeader(jSONObject2, ResponseHeader.ALLOW_CUSTOM_CLOSE, false));
                if ("json".equals(extractHeader)) {
                    String m6052b = HeaderUtils.m6052b(jSONObject2, ResponseHeader.IMPRESSION_MIN_VISIBLE_PERCENT);
                    String extractHeader11 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_VISIBLE_MS);
                    String extractHeader12 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_MIN_VISIBLE_PX);
                    if (!TextUtils.isEmpty(m6052b)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT, m6052b);
                    }
                    if (!TextUtils.isEmpty(extractHeader11)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_VISIBLE_MS, extractHeader11);
                    }
                    if (!TextUtils.isEmpty(extractHeader12)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PX, extractHeader12);
                    }
                }
                String extractHeader13 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.VIDEO_TRACKERS);
                if (!TextUtils.isEmpty(extractHeader13)) {
                    jsonStringToMap.put(DataKeys.VIDEO_TRACKERS_KEY, extractHeader13);
                }
                if (AdFormat.BANNER.equals(adFormat)) {
                    builder.setBannerImpressionMinVisibleMs(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.BANNER_IMPRESSION_MIN_VISIBLE_MS));
                    builder.setBannerImpressionMinVisibleDips(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.BANNER_IMPRESSION_MIN_VISIBLE_DIPS));
                }
                String extractHeader14 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.DISABLE_VIEWABILITY);
                if (!TextUtils.isEmpty(extractHeader14)) {
                    try {
                        if (Integer.parseInt(extractHeader14) > 0) {
                            MoPub.disableViewability();
                        }
                    } catch (Exception e2) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Error: invalid response value DISABLE_VIEWABILITY");
                    }
                }
                builder.setViewabilityVendors(ViewabilityVendor.createFromJsonArray(HeaderUtils.extractJsonArrayHeader(jSONObject2, ResponseHeader.VIEWABILITY_VERIFICATION)));
                builder.setServerExtras(jsonStringToMap);
                String extractHeader15 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_VIDEO_CURRENCY_NAME);
                String extractHeader16 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_VIDEO_CURRENCY_AMOUNT);
                String extractHeader17 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_CURRENCIES);
                String extractHeader18 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_VIDEO_COMPLETION_URL);
                Integer extractIntegerHeader2 = HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.REWARDED_DURATION);
                builder.setRewardedAdCurrencyName(extractHeader15);
                builder.setRewardedAdCurrencyAmount(extractHeader16);
                builder.setRewardedCurrencies(extractHeader17);
                builder.setRewardedAdCompletionUrl(extractHeader18);
                builder.setRewardedDuration(extractIntegerHeader2);
                return builder.build();
            } catch (JSONException e3) {
                throw new MoPubNetworkError("Failed to parse ADM for advanced bidding", e3, MoPubNetworkError.Reason.BAD_BODY);
            }
        } catch (JSONException e4) {
            throw new MoPubNetworkError("Failed to decode server extras for base ad data.", e4, MoPubNetworkError.Reason.BAD_HEADER_DATA);
        }
    }

    /* renamed from: a */
    private static String m6045a(NetworkResponse networkResponse) {
        String str;
        Preconditions.checkNotNull(networkResponse);
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return str;
    }

    public static void setServerOverrideListener(ServerOverrideListener serverOverrideListener) {
        f60316c = serverOverrideListener;
    }

    public String getFailURL() {
        return this.f60317a;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f60318b.hasNext();
    }

    @Override // java.util.Iterator
    public AdResponse next() {
        return this.f60318b.next();
    }
}
