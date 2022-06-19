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
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MultiAdResponse.class */
public class MultiAdResponse implements Iterator<AdResponse> {

    /* renamed from: c */
    public static ServerOverrideListener f5416c;

    /* renamed from: a */
    public final Iterator<AdResponse> f5417a;

    /* renamed from: b */
    public String f5418b;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MultiAdResponse$ServerOverrideListener.class */
    public interface ServerOverrideListener {
        void onForceExplicitNo(String str);

        void onForceGdprApplies();

        void onInvalidateConsent(String str);

        void onReacquireConsent(String str);

        void onRequestSuccess(String str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0263, code lost:
        r0 = r0.iterator();
        r8.f5417a = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0276, code lost:
        if (r0.hasNext() != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0279, code lost:
        r9 = 30000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0282, code lost:
        if (r18 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0285, code lost:
        r9 = r18.getRefreshTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0298, code lost:
        throw new com.mopub.network.MoPubNetworkError("No ads found for ad unit.", com.mopub.network.MoPubNetworkError.Reason.NO_FILL, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0299, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiAdResponse(android.content.Context r9, com.mopub.volley.NetworkResponse r10, com.mopub.common.AdFormat r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.MultiAdResponse.<init>(android.content.Context, com.mopub.volley.NetworkResponse, com.mopub.common.AdFormat, java.lang.String):void");
    }

    /* renamed from: a */
    public static boolean m3203a(String str, String str2) {
        return "mraid".equals(str) || AdType.HTML.equals(str) || (AdType.INTERSTITIAL.equals(str) && FullAdType.VAST.equals(str2)) || ((AdType.REWARDED_VIDEO.equals(str) && FullAdType.VAST.equals(str2)) || AdType.REWARDED_PLAYABLE.equals(str) || AdType.FULLSCREEN.equals(str));
    }

    /* renamed from: b */
    public static Integer m3202b(JSONObject jSONObject) {
        Preconditions.checkNotNull(jSONObject);
        Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(jSONObject.getJSONObject(ResponseHeader.METADATA.getKey()), ResponseHeader.REFRESH_TIME);
        return extractIntegerHeader == null ? null : Integer.valueOf(extractIntegerHeader.intValue() * 1000);
    }

    /* renamed from: c */
    public static boolean m3201c(JSONObject jSONObject) {
        Preconditions.checkNotNull(jSONObject);
        return HeaderUtils.extractBooleanHeader(jSONObject.optJSONObject(ResponseHeader.METADATA.getKey()), ResponseHeader.WARMUP, false);
    }

    /* renamed from: e */
    public static AdResponse m3199e(Context context, NetworkResponse networkResponse, JSONObject jSONObject, String str, AdFormat adFormat, String str2, String str3) {
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
        builder.setRefreshTimeMilliseconds(m3202b(jSONObject));
        if (AdType.CLEAR.equals(extractHeader)) {
            return builder.build();
        }
        builder.setDspCreativeId(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.DSP_CREATIVE_ID));
        builder.setNetworkType(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.NETWORK_TYPE));
        builder.setImpressionData(ImpressionData.m3213a(HeaderUtils.extractJsonObjectHeader(jSONObject2, ResponseHeader.IMPRESSION_DATA)));
        ResponseHeader responseHeader = ResponseHeader.CLICK_TRACKING_URL;
        List<String> m3218b = HeaderUtils.m3218b(jSONObject2, responseHeader);
        if (m3218b.isEmpty()) {
            String extractHeader4 = HeaderUtils.extractHeader(jSONObject2, responseHeader);
            if (!TextUtils.isEmpty(extractHeader4) && !"[]".equals(extractHeader4)) {
                m3218b.add(extractHeader4);
            }
        }
        builder.setClickTrackingUrls(m3218b);
        List<String> m3218b2 = HeaderUtils.m3218b(jSONObject2, ResponseHeader.IMPRESSION_URLS);
        if (m3218b2.isEmpty()) {
            String extractHeader5 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_URL);
            if (!TextUtils.isEmpty(extractHeader5) && !"[]".equals(extractHeader5)) {
                m3218b2.add(extractHeader5);
            }
        }
        builder.setImpressionTrackingUrls(m3218b2);
        ResponseHeader responseHeader2 = ResponseHeader.BEFORE_LOAD_URL;
        List<String> m3218b3 = HeaderUtils.m3218b(jSONObject2, responseHeader2);
        if (m3218b3.isEmpty()) {
            String extractHeader6 = HeaderUtils.extractHeader(jSONObject2, responseHeader2);
            if (!TextUtils.isEmpty(extractHeader6) && !"[]".equals(extractHeader6)) {
                m3218b3.add(extractHeader6);
            }
        }
        builder.setBeforeLoadUrls(m3218b3);
        ResponseHeader responseHeader3 = ResponseHeader.AFTER_LOAD_URL;
        List<String> m3218b4 = HeaderUtils.m3218b(jSONObject2, responseHeader3);
        if (m3218b4.isEmpty()) {
            String extractHeader7 = HeaderUtils.extractHeader(jSONObject2, responseHeader3);
            if (!TextUtils.isEmpty(extractHeader7) && !"[]".equals(extractHeader7)) {
                m3218b4.add(extractHeader7);
            }
        }
        builder.setAfterLoadUrls(m3218b4);
        ResponseHeader responseHeader4 = ResponseHeader.AFTER_LOAD_SUCCESS_URL;
        List<String> m3218b5 = HeaderUtils.m3218b(jSONObject2, responseHeader4);
        if (m3218b5.isEmpty()) {
            String extractHeader8 = HeaderUtils.extractHeader(jSONObject2, responseHeader4);
            if (!TextUtils.isEmpty(extractHeader8) && !"[]".equals(extractHeader8)) {
                m3218b5.add(extractHeader8);
            }
        }
        builder.setAfterLoadSuccessUrls(m3218b5);
        ResponseHeader responseHeader5 = ResponseHeader.AFTER_LOAD_FAIL_URL;
        List<String> m3218b6 = HeaderUtils.m3218b(jSONObject2, responseHeader5);
        if (m3218b6.isEmpty()) {
            String extractHeader9 = HeaderUtils.extractHeader(jSONObject2, responseHeader5);
            if (!TextUtils.isEmpty(extractHeader9) && !"[]".equals(extractHeader9)) {
                m3218b6.add(extractHeader9);
            }
        }
        builder.setAfterLoadFailUrls(m3218b6);
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
                if (!jSONObject2.optString(DataKeys.ADM_KEY).isEmpty()) {
                    jsonStringToMap.put(DataKeys.ADM_KEY, jSONObject2.getString(DataKeys.ADM_KEY));
                }
                jsonStringToMap.put(DataKeys.VAST_CLICK_EXP_ENABLED_KEY, Boolean.toString(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.VAST_CLICK_ENABLED, 0).intValue() == 1));
                jsonStringToMap.put("adunit_format", str2);
                if (m3203a(extractHeader, extractHeader3)) {
                    jsonStringToMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, optString);
                    jsonStringToMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.ORIENTATION));
                }
                builder.setAllowCustomClose(HeaderUtils.extractBooleanHeader(jSONObject2, ResponseHeader.ALLOW_CUSTOM_CLOSE, false));
                if ("json".equals(extractHeader)) {
                    String m3219a = HeaderUtils.m3219a(jSONObject2, ResponseHeader.IMPRESSION_MIN_VISIBLE_PERCENT);
                    String extractHeader11 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_VISIBLE_MS);
                    String extractHeader12 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_MIN_VISIBLE_PX);
                    if (!TextUtils.isEmpty(m3219a)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT, m3219a);
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
                Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.REWARDED_DURATION);
                boolean extractBooleanHeader = HeaderUtils.extractBooleanHeader(jSONObject2, ResponseHeader.SHOULD_REWARD_ON_CLICK, false);
                builder.setRewardedVideoCurrencyName(extractHeader15);
                builder.setRewardedVideoCurrencyAmount(extractHeader16);
                builder.setRewardedCurrencies(extractHeader17);
                builder.setRewardedVideoCompletionUrl(extractHeader18);
                builder.setRewardedDuration(extractIntegerHeader);
                builder.setShouldRewardOnClick(extractBooleanHeader);
                return builder.build();
            } catch (JSONException e3) {
                throw new MoPubNetworkError("Failed to parse ADM for advanced bidding", e3, MoPubNetworkError.Reason.BAD_BODY);
            }
        } catch (JSONException e4) {
            throw new MoPubNetworkError("Failed to decode server extras for base ad data.", e4, MoPubNetworkError.Reason.BAD_HEADER_DATA);
        }
    }

    /* renamed from: f */
    public static String m3198f(NetworkResponse networkResponse) {
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
        f5416c = serverOverrideListener;
    }

    /* renamed from: d */
    public boolean m3200d() {
        return TextUtils.isEmpty(this.f5418b);
    }

    public String getFailURL() {
        return this.f5418b;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5417a.hasNext();
    }

    @Override // java.util.Iterator
    public AdResponse next() {
        return this.f5417a.next();
    }
}
