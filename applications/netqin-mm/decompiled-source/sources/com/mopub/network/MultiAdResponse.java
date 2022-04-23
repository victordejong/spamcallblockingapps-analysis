package com.mopub.network;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.FullAdType;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
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
/* loaded from: classes2-dex2jar.jar:com/mopub/network/MultiAdResponse.class */
public class MultiAdResponse implements Iterator<AdResponse> {

    /* renamed from: c */
    public static ServerOverrideListener f35041c;

    /* renamed from: a */
    public final Iterator<AdResponse> f35042a;

    /* renamed from: b */
    public String f35043b;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MultiAdResponse$ServerOverrideListener.class */
    public interface ServerOverrideListener {
        void onForceExplicitNo(String str);

        void onForceGdprApplies();

        void onInvalidateConsent(String str);

        void onReacquireConsent(String str);

        void onRequestSuccess(String str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0263, code lost:
        r0 = r0.iterator();
        r8.f35042a = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0276, code lost:
        if (r0.hasNext() != false) goto L_0x0299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0279, code lost:
        r9 = 30000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0282, code lost:
        if (r18 == null) goto L_0x028b;
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
    public MultiAdResponse(android.content.Context r9, com.mopub.volley.NetworkResponse r10, com.mopub.common.AdFormat r11, java.lang.String r12) throws org.json.JSONException, com.mopub.network.MoPubNetworkError {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.MultiAdResponse.<init>(android.content.Context, com.mopub.volley.NetworkResponse, com.mopub.common.AdFormat, java.lang.String):void");
    }

    /* renamed from: a */
    public static AdResponse m3784a(Context context, NetworkResponse networkResponse, JSONObject jSONObject, String str, AdFormat adFormat, String str2, String str3) throws JSONException, MoPubNetworkError {
        ExternalViewabilitySessionManager.ViewabilityVendor fromKey;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(networkResponse);
        Preconditions.checkNotNull(jSONObject);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(str2);
        boolean z = true;
        MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, jSONObject.toString());
        AdResponse.Builder builder = new AdResponse.Builder();
        String optString = jSONObject.optString(ResponseHeader.CONTENT.getKey());
        JSONObject jSONObject2 = jSONObject.getJSONObject(ResponseHeader.METADATA.getKey());
        builder.setAdUnitId(str);
        builder.setResponseBody(optString);
        String extractHeader = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AD_TYPE);
        String extractHeader2 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.FULL_AD_TYPE);
        builder.setAdType(extractHeader);
        builder.setFullAdType(extractHeader2);
        builder.setRefreshTimeMilliseconds(m3781a(jSONObject));
        if (AdType.CLEAR.equals(extractHeader)) {
            return builder.build();
        }
        builder.setDspCreativeId(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.DSP_CREATIVE_ID));
        builder.setNetworkType(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.NETWORK_TYPE));
        builder.setImpressionData(ImpressionData.create(HeaderUtils.extractJsonObjectHeader(jSONObject2, ResponseHeader.IMPRESSION_DATA)));
        String extractHeader3 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.CLICK_TRACKING_URL);
        builder.setClickTrackingUrl(extractHeader3);
        List<String> b = HeaderUtils.m3795b(jSONObject2, ResponseHeader.IMPRESSION_URLS);
        if (b.isEmpty()) {
            b.add(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_URL));
        }
        builder.setImpressionTrackingUrls(b);
        builder.setBeforeLoadUrl(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.BEFORE_LOAD_URL));
        List<String> b2 = HeaderUtils.m3795b(jSONObject2, ResponseHeader.AFTER_LOAD_URL);
        if (b2.isEmpty()) {
            b2.add(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AFTER_LOAD_URL));
        }
        builder.setAfterLoadUrls(b2);
        List<String> b3 = HeaderUtils.m3795b(jSONObject2, ResponseHeader.AFTER_LOAD_SUCCESS_URL);
        if (b3.isEmpty()) {
            b3.add(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AFTER_LOAD_SUCCESS_URL));
        }
        builder.setAfterLoadSuccessUrls(b3);
        List<String> b4 = HeaderUtils.m3795b(jSONObject2, ResponseHeader.AFTER_LOAD_FAIL_URL);
        if (b4.isEmpty()) {
            b4.add(HeaderUtils.extractHeader(jSONObject2, ResponseHeader.AFTER_LOAD_FAIL_URL));
        }
        builder.setAfterLoadFailUrls(b4);
        builder.setRequestId(str3);
        builder.setDimensions(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.WIDTH), HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.HEIGHT));
        builder.setAdTimeoutDelayMilliseconds(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.AD_TIMEOUT));
        if (AdType.STATIC_NATIVE.equals(extractHeader) || AdType.VIDEO_NATIVE.equals(extractHeader)) {
            try {
                builder.setJsonBody(new JSONObject(optString));
            } catch (JSONException e) {
                throw new MoPubNetworkError("Failed to decode body JSON for native ad format", e, MoPubNetworkError.Reason.BAD_BODY);
            }
        }
        builder.setCustomEventClassName(AdTypeTranslator.getCustomEventName(adFormat, extractHeader, extractHeader2, jSONObject2));
        MoPub.BrowserAgent fromHeader = MoPub.BrowserAgent.fromHeader(HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.BROWSER_AGENT));
        MoPub.setBrowserAgentFromAdServer(fromHeader);
        builder.setBrowserAgent(fromHeader);
        String extractHeader4 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.CUSTOM_EVENT_DATA);
        String str4 = extractHeader4;
        if (TextUtils.isEmpty(extractHeader4)) {
            str4 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.NATIVE_PARAMS);
        }
        try {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(str4);
            try {
                if (!jSONObject2.optString(DataKeys.ADM_KEY).isEmpty()) {
                    jsonStringToMap.put(DataKeys.ADM_KEY, jSONObject2.getString(DataKeys.ADM_KEY));
                }
                if (!TextUtils.isEmpty(extractHeader3)) {
                    jsonStringToMap.put(DataKeys.CLICKTHROUGH_URL_KEY, extractHeader3);
                }
                if (HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.VAST_CLICK_ENABLED, 0).intValue() != 1) {
                    z = false;
                }
                jsonStringToMap.put(DataKeys.VAST_CLICK_EXP_ENABLED_KEY, Boolean.toString(z));
                jsonStringToMap.put("adunit_format", str2);
                if (m3782a(extractHeader, extractHeader2)) {
                    jsonStringToMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, optString);
                    jsonStringToMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.ORIENTATION));
                }
                if (AdType.STATIC_NATIVE.equals(extractHeader) || AdType.VIDEO_NATIVE.equals(extractHeader)) {
                    String a = HeaderUtils.m3797a(jSONObject2, ResponseHeader.IMPRESSION_MIN_VISIBLE_PERCENT);
                    String extractHeader5 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_VISIBLE_MS);
                    String extractHeader6 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.IMPRESSION_MIN_VISIBLE_PX);
                    if (!TextUtils.isEmpty(a)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT, a);
                    }
                    if (!TextUtils.isEmpty(extractHeader5)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_VISIBLE_MS, extractHeader5);
                    }
                    if (!TextUtils.isEmpty(extractHeader6)) {
                        jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PX, extractHeader6);
                    }
                }
                if (AdType.VIDEO_NATIVE.equals(extractHeader)) {
                    jsonStringToMap.put(DataKeys.PLAY_VISIBLE_PERCENT, HeaderUtils.m3797a(jSONObject2, ResponseHeader.PLAY_VISIBLE_PERCENT));
                    jsonStringToMap.put(DataKeys.PAUSE_VISIBLE_PERCENT, HeaderUtils.m3797a(jSONObject2, ResponseHeader.PAUSE_VISIBLE_PERCENT));
                    jsonStringToMap.put(DataKeys.MAX_BUFFER_MS, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.MAX_BUFFER_MS));
                }
                String extractHeader7 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.VIDEO_TRACKERS);
                if (!TextUtils.isEmpty(extractHeader7)) {
                    jsonStringToMap.put(DataKeys.VIDEO_TRACKERS_KEY, extractHeader7);
                }
                if (AdType.REWARDED_VIDEO.equals(extractHeader) || (AdType.INTERSTITIAL.equals(extractHeader) && FullAdType.VAST.equals(extractHeader2))) {
                    jsonStringToMap.put(DataKeys.EXTERNAL_VIDEO_VIEWABILITY_TRACKERS_KEY, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.VIDEO_VIEWABILITY_TRACKERS));
                }
                if (AdFormat.BANNER.equals(adFormat)) {
                    jsonStringToMap.put(DataKeys.BANNER_IMPRESSION_MIN_VISIBLE_MS, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.BANNER_IMPRESSION_MIN_VISIBLE_MS));
                    jsonStringToMap.put(DataKeys.BANNER_IMPRESSION_MIN_VISIBLE_DIPS, HeaderUtils.extractHeader(jSONObject2, ResponseHeader.BANNER_IMPRESSION_MIN_VISIBLE_DIPS));
                }
                String extractHeader8 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.DISABLE_VIEWABILITY);
                if (!TextUtils.isEmpty(extractHeader8) && (fromKey = ExternalViewabilitySessionManager.ViewabilityVendor.fromKey(extractHeader8)) != null) {
                    fromKey.disable();
                }
                builder.setServerExtras(jsonStringToMap);
                if (AdType.REWARDED_VIDEO.equals(extractHeader) || AdType.CUSTOM.equals(extractHeader) || AdType.REWARDED_PLAYABLE.equals(extractHeader)) {
                    String extractHeader9 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_VIDEO_CURRENCY_NAME);
                    String extractHeader10 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_VIDEO_CURRENCY_AMOUNT);
                    String extractHeader11 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_CURRENCIES);
                    String extractHeader12 = HeaderUtils.extractHeader(jSONObject2, ResponseHeader.REWARDED_VIDEO_COMPLETION_URL);
                    Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(jSONObject2, ResponseHeader.REWARDED_DURATION);
                    boolean extractBooleanHeader = HeaderUtils.extractBooleanHeader(jSONObject2, ResponseHeader.SHOULD_REWARD_ON_CLICK, false);
                    builder.setRewardedVideoCurrencyName(extractHeader9);
                    builder.setRewardedVideoCurrencyAmount(extractHeader10);
                    builder.setRewardedCurrencies(extractHeader11);
                    builder.setRewardedVideoCompletionUrl(extractHeader12);
                    builder.setRewardedDuration(extractIntegerHeader);
                    builder.setShouldRewardOnClick(extractBooleanHeader);
                }
                return builder.build();
            } catch (JSONException e2) {
                throw new MoPubNetworkError("Failed to parse ADM for advanced bidding", e2, MoPubNetworkError.Reason.BAD_BODY);
            }
        } catch (JSONException e3) {
            throw new MoPubNetworkError("Failed to decode server extras for custom event data.", e3, MoPubNetworkError.Reason.BAD_HEADER_DATA);
        }
    }

    /* renamed from: a */
    public static Integer m3781a(JSONObject jSONObject) throws JSONException {
        Preconditions.checkNotNull(jSONObject);
        Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(jSONObject.getJSONObject(ResponseHeader.METADATA.getKey()), ResponseHeader.REFRESH_TIME);
        return extractIntegerHeader == null ? null : Integer.valueOf(extractIntegerHeader.intValue() * 1000);
    }

    /* renamed from: a */
    public static String m3783a(NetworkResponse networkResponse) {
        String str;
        Preconditions.checkNotNull(networkResponse);
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m3782a(String str, String str2) {
        return AdType.MRAID.equals(str) || AdType.HTML.equals(str) || (AdType.INTERSTITIAL.equals(str) && FullAdType.VAST.equals(str2)) || ((AdType.REWARDED_VIDEO.equals(str) && FullAdType.VAST.equals(str2)) || AdType.REWARDED_PLAYABLE.equals(str));
    }

    /* renamed from: b */
    public static boolean m3780b(JSONObject jSONObject) {
        Preconditions.checkNotNull(jSONObject);
        return HeaderUtils.extractBooleanHeader(jSONObject.optJSONObject(ResponseHeader.METADATA.getKey()), ResponseHeader.WARMUP, false);
    }

    public static void setServerOverrideListener(ServerOverrideListener serverOverrideListener) {
        f35041c = serverOverrideListener;
    }

    /* renamed from: a */
    public boolean m3785a() {
        return TextUtils.isEmpty(this.f35043b);
    }

    public String getFailURL() {
        return this.f35043b;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f35042a.hasNext();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public AdResponse next() {
        return this.f35042a.next();
    }
}
