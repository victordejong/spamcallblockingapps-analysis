package com.pubmatic.sdk.openwrap.core;

import android.net.Uri;
import com.facebook.appevents.UserDataStore;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBBidderResult;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.models.POBApplicationInfo;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.network.POBNetworkResult;
import com.pubmatic.sdk.common.network.POBTrackerHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBPartnerTrackerHelper.class */
public class POBPartnerTrackerHelper {
    public static final String NO_CLIENT_BIDDER_AVAILABLE_MSG = "No client-side bidder profile configured, skipping logger call";

    /* renamed from: a */
    private static String m852a(double d) {
        return String.format(Locale.getDefault(), "%.2f", Double.valueOf(d));
    }

    /* renamed from: a */
    private static String m845a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse("").buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }

    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* renamed from: a */
    private static List<JSONObject> m848a(POBBid pOBBid, Map<String, POBBidderResult> map, POBRequest pOBRequest, Map<String, POBPartnerInfo> map2, JSONObject jSONObject) {
        Iterator<Map.Entry<String, POBPartnerInfo>> it;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, POBPartnerInfo>> it2 = map2.entrySet().iterator();
        while (it2.hasNext()) {
            POBPartnerInfo pOBPartnerInfo = map2.get(it2.next().getKey());
            if (pOBPartnerInfo != null) {
                POBBidderResult pOBBidderResult = map.get(pOBPartnerInfo.getPubMaticPartnerId());
                if (pOBBidderResult != null) {
                    POBAdResponse adResponse = pOBBidderResult.getAdResponse();
                    if (adResponse != null) {
                        List bids = adResponse.getBids();
                        if (!bids.isEmpty()) {
                            int i = 0;
                            boolean z = false;
                            while (i < bids.size()) {
                                POBBid pOBBid2 = (POBBid) bids.get(i);
                                if (pOBBid2 != null) {
                                    Object partnerName = pOBBid2.getPartnerName();
                                    Object obj = pOBRequest.getAdUnitId() + "@" + pOBBid2.getWidth() + "x" + pOBBid2.getHeight();
                                    Object obj2 = pOBBid2.getWidth() + "x" + pOBBid2.getHeight();
                                    String creativeType = pOBBid2.getCreativeType();
                                    double parseDouble = Double.parseDouble(m852a(pOBBid2.getPrice()));
                                    double parseDouble2 = Double.parseDouble(String.format(Locale.getDefault(), "%.2f", Double.valueOf(pOBBid2.getPrice() * (1.0d - (pOBPartnerInfo.getRevShare() / 100.0d)))));
                                    String id = pOBBid2.getId();
                                    boolean equals = pOBBid != null ? id.equals(pOBBid.getId()) : false;
                                    Object dealId = pOBBid2.getDealId();
                                    int i2 = pOBBid2.getStatus() == 1 ? 0 : 1;
                                    POBNetworkResult networkResult = pOBBidderResult.getNetworkResult();
                                    jSONObject.put("l1", networkResult != null ? networkResult.getNetworkTimeMs() : false ? 1L : 0L);
                                    jSONObject.put("pn", partnerName);
                                    jSONObject.put("kgpv", obj);
                                    jSONObject.put("kgpsv", obj);
                                    jSONObject.put("psz", obj2);
                                    if (!POBUtils.isNullOrEmpty(creativeType)) {
                                        jSONObject.put("af", creativeType);
                                    }
                                    jSONObject.put("eg", parseDouble);
                                    jSONObject.put("en", parseDouble2);
                                    jSONObject.put("wb", equals ? 1 : 0);
                                    jSONObject.put("bidid", id);
                                    jSONObject.put("ss", 0);
                                    if (dealId != null) {
                                        jSONObject.put("di", dealId);
                                        jSONObject.put("dc", "PMP");
                                    }
                                    jSONObject.put(UserDataStore.DATE_OF_BIRTH, i2);
                                    arrayList.add(jSONObject);
                                    z = true;
                                }
                                i++;
                                z = z;
                            }
                            it = it2;
                            if (!z) {
                                pOBBidderResult = pOBBidderResult;
                            }
                            it2 = it;
                        }
                    }
                    arrayList.add(m849a(pOBPartnerInfo, pOBBidderResult.getNetworkResult(), jSONObject));
                    it = it2;
                    it2 = it;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static Map<String, String> m847a(String str) {
        Uri parse = Uri.parse(str);
        Set<String> queryParameterNames = parse.getQueryParameterNames();
        HashMap hashMap = new HashMap();
        for (String str2 : queryParameterNames) {
            hashMap.put(str2, parse.getQueryParameter(str2));
        }
        return hashMap;
    }

    /* renamed from: a */
    private static Map<String, String> m846a(String str, POBRequest pOBRequest) {
        if (POBUtils.isNullOrEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, pOBRequest.getPubId());
            return hashMap;
        }
        return m847a(str);
    }

    /* renamed from: a */
    private static JSONObject m851a(POBAdResponse<POBBid> pOBAdResponse, Map<String, POBPartnerInfo> map, POBRequest pOBRequest, Map<String, POBBidderResult> map2, String str) {
        String str2;
        POBBid pOBBid;
        POBImpression pOBImpression;
        long currentTimeMillis = System.currentTimeMillis();
        int networkTimeout = pOBRequest.getNetworkTimeout();
        int parseInt = Integer.parseInt(pOBRequest.getPubId());
        int profileId = pOBRequest.getProfileId();
        String valueOf = String.valueOf(pOBRequest.getVersionId());
        POBApplicationInfo applicationInfo = POBInstanceProvider.getSdkConfig().getApplicationInfo();
        URL storeURL = applicationInfo != null ? applicationInfo.getStoreURL() : null;
        String url = storeURL != null ? storeURL.toString() : null;
        POBImpression[] impressions = pOBRequest.getImpressions();
        String str3 = "";
        if (impressions == null || impressions.length <= 0) {
            str2 = "";
        } else {
            str3 = impressions[0].f731id;
            str2 = str3 + "_" + pOBImpression.adUnitId;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("tst", currentTimeMillis);
        jSONObject.put("to", networkTimeout * 1000);
        jSONObject.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, parseInt);
        jSONObject.put("pid", String.valueOf(profileId));
        jSONObject.put("pdvid", valueOf);
        jSONObject.put("iid", str3);
        jSONObject.put("purl", url);
        jSONObject.put("orig", str);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("plt", 5);
        jSONObject.put("dvc", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        POBBid pOBBid2 = null;
        if (pOBAdResponse != null) {
            pOBBid2 = pOBAdResponse.getWinningBid();
        }
        jSONObject3.put("ps", new JSONArray(m848a(pOBBid2, map2, pOBRequest, map, new JSONObject()).toArray()));
        jSONObject3.put("sn", str2);
        if (pOBAdResponse != null && pOBAdResponse.getClientSidePartnerBids() != null && !pOBAdResponse.getClientSidePartnerBids().isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < pOBAdResponse.getClientSidePartnerBids().size(); i++) {
                if (pOBAdResponse.getBids().get(i) != null) {
                    arrayList.add(pOBBid.getWidth() + "x" + pOBBid.getHeight());
                }
            }
            jSONObject3.put("sz", new JSONArray(arrayList.toArray()));
        }
        jSONObject.put("s", new JSONArray(new JSONObject[]{jSONObject3}));
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONObject m850a(POBAdResponse<POBBid> pOBAdResponse, Map<String, POBPartnerInfo> map, POBRequest pOBRequest, Map<String, String> map2, Map<String, POBBidderResult> map3, String str) {
        if (pOBAdResponse == null || POBUtils.isNullOrEmpty(pOBAdResponse.getLogger())) {
            PMLog.info("POBPartnerTrackerHelper", "Generating default logger", new Object[0]);
            return m851a(pOBAdResponse, map, pOBRequest, map3, str);
        }
        PMLog.info("POBPartnerTrackerHelper", "Updating logger details", new Object[0]);
        JSONObject jSONObject = new JSONObject(new JSONObject(URLDecoder.decode(String.valueOf(new JSONObject(map2)), POBCommonConstants.URL_ENCODING)).getString("json"));
        JSONArray jSONArray = jSONObject.getJSONArray("s");
        if (jSONArray.length() > 0) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(0);
            JSONArray jSONArray2 = jSONObject2.getJSONArray("ps");
            jSONObject2.put("ps", new JSONArray(m848a(pOBAdResponse.getWinningBid(), map3, pOBRequest, map, jSONArray2.length() > 0 ? jSONArray2.getJSONObject(0) : new JSONObject()).toArray()));
            jSONObject.put("s", new JSONArray(new JSONObject[]{jSONObject2}));
        }
        return jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* renamed from: a */
    private static JSONObject m849a(POBPartnerInfo pOBPartnerInfo, POBNetworkResult pOBNetworkResult, JSONObject jSONObject) {
        jSONObject.put("pn", pOBPartnerInfo.getName());
        jSONObject.put(UserDataStore.DATE_OF_BIRTH, 1);
        jSONObject.put("l1", (pOBNetworkResult != null ? pOBNetworkResult.getNetworkTimeMs() : false) == true ? 1L : 0L);
        jSONObject.put("ss", 0);
        return jSONObject;
    }

    public static void executeLogger(POBAdResponse<POBBid> pOBAdResponse, Map<String, POBPartnerInfo> map, POBRequest pOBRequest, Map<String, POBBidderResult> map2, POBTrackerHandler pOBTrackerHandler, String str) {
        if (map == null || map.isEmpty()) {
            PMLog.debug("POBPartnerTrackerHelper", "No client-side bidder profile configured, skipping logger call", new Object[0]);
            return;
        }
        String str2 = null;
        if (pOBAdResponse != null) {
            str2 = pOBAdResponse.getLogger();
        }
        Map<String, String> m846a = m846a(str2, pOBRequest);
        try {
            JSONObject m850a = m850a(pOBAdResponse, map, pOBRequest, m846a, map2, str);
            PMLog.debug("POBPartnerTrackerHelper", "Logger JSON - %s", m850a);
            m846a.put("json", String.valueOf(m850a));
            pOBTrackerHandler.sendTracker(String.format("%s%s", "https://t.pubmatic.com/wl", m845a(m846a)));
        } catch (UnsupportedEncodingException | JSONException e) {
            PMLog.info("POBPartnerTrackerHelper", "Exception occurred while executing the logger - %s", e.getLocalizedMessage());
        }
    }

    public static void executeTracker(POBTrackerHandler pOBTrackerHandler, POBAdResponse<POBBid> pOBAdResponse, POBRequest pOBRequest, POBPartnerInfo pOBPartnerInfo) {
        POBBid winningBid = pOBAdResponse.getWinningBid();
        if (winningBid == null) {
            PMLog.warn("POBPartnerTrackerHelper", " Unable to execute partner tracker as bid is not available.", new Object[0]);
            return;
        }
        String bidderCode = pOBPartnerInfo.getBidderCode();
        String id = winningBid.getId();
        String adUnitId = pOBRequest.getAdUnitId();
        String str = adUnitId + "@" + winningBid.getWidth() + "x" + winningBid.getHeight();
        String m852a = m852a(winningBid.getPrice());
        String format = String.format(Locale.getDefault(), "%.2f", Double.valueOf(winningBid.getPrice() * (1.0d - (pOBPartnerInfo.getRevShare() / 100.0d))));
        String str2 = winningBid.getImpressionId() + "_" + adUnitId;
        String tracker = pOBAdResponse.getTracker();
        if (POBUtils.isNullOrEmpty(tracker)) {
            tracker = String.format("https://t.pubmatic.com/wt?bidid=%s&eg=%s&en=%s&iid=%s&kgpv=%s&pdvid=%s&pid=%s&pn=%s&pubid=%s&slot=%s", id, m852a, format, winningBid.getImpressionId(), str, Integer.valueOf(pOBRequest.getVersionId() != null ? pOBRequest.getVersionId().intValue() : 0), Integer.valueOf(pOBRequest.getProfileId()), bidderCode, pOBRequest.getPubId(), str2);
        } else {
            try {
                tracker = tracker.replace(URLEncoder.encode("${BID_ID}", StandardCharsets.UTF_8.name()), winningBid.getId()).replace(URLEncoder.encode("${PARTNER_NAME}", StandardCharsets.UTF_8.name()), winningBid.getPartnerName()).replace(URLEncoder.encode("${KGPV}", StandardCharsets.UTF_8.name()), str).replace(URLEncoder.encode("${G_ECPM}", StandardCharsets.UTF_8.name()), m852a).replace(URLEncoder.encode("${N_ECPM}", StandardCharsets.UTF_8.name()), format).replace(URLEncoder.encode("${SLOT_ID}", StandardCharsets.UTF_8.name()), str2);
            } catch (UnsupportedEncodingException e) {
                PMLog.warn("POBPartnerTrackerHelper", "Tracker macro replacement failed.", new Object[0]);
            }
        }
        pOBTrackerHandler.sendTracker(POBTrackerHandler.sanitizeURLScheme(tracker, Boolean.TRUE));
    }
}
