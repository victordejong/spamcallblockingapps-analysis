package com.pubmatic.sdk.common.models;

import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBPartnerInfo.class */
public class POBPartnerInfo {

    /* renamed from: a */
    private String f476a;

    /* renamed from: b */
    private String f477b;

    /* renamed from: c */
    private String f478c;

    /* renamed from: d */
    private String f479d;

    /* renamed from: e */
    private double f480e;

    /* renamed from: f */
    private long f481f;

    /* renamed from: g */
    private String f482g;

    /* renamed from: h */
    private boolean f483h;

    /* renamed from: i */
    private Map<String, Map<String, String>> f484i;

    /* renamed from: j */
    private List<Map<String, String>> f485j;

    /* renamed from: a */
    private List<Map<String, String>> m1032a(String str, POBAdSize[] pOBAdSizeArr) {
        ArrayList arrayList = new ArrayList();
        for (POBAdSize pOBAdSize : pOBAdSizeArr) {
            Map<String, String> map = this.f484i.get(str + "@" + pOBAdSize.getAdWidth() + "x" + pOBAdSize.getAdHeight());
            if (map != null) {
                map.put(POBCommonConstants.AD_SIZE_KEY, pOBAdSize.toString());
                arrayList.add(map);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList.size() == 0) {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: a */
    private Map<String, Map<String, String>> m1031a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (!"".equalsIgnoreCase(optString)) {
                try {
                    Map<String, String> m1030b = m1030b(new JSONObject(optString));
                    if (m1030b != null) {
                        hashMap.put(next, m1030b);
                    }
                } catch (JSONException e) {
                }
            }
        }
        HashMap hashMap2 = hashMap;
        if (hashMap.size() == 0) {
            hashMap2 = null;
        }
        return hashMap2;
    }

    /* renamed from: b */
    private Map<String, String> m1030b(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.optString(next));
        }
        HashMap hashMap2 = hashMap;
        if (hashMap.size() == 0) {
            hashMap2 = null;
        }
        return hashMap2;
    }

    public static POBPartnerInfo build(POBPartnerInfo pOBPartnerInfo, String str, POBAdSize[] pOBAdSizeArr) {
        POBPartnerInfo pOBPartnerInfo2 = new POBPartnerInfo();
        pOBPartnerInfo2.f476a = pOBPartnerInfo.f476a;
        pOBPartnerInfo2.f477b = pOBPartnerInfo.f477b;
        pOBPartnerInfo2.f478c = pOBPartnerInfo.f478c;
        pOBPartnerInfo2.f479d = pOBPartnerInfo.f479d;
        pOBPartnerInfo2.f480e = pOBPartnerInfo.f480e;
        pOBPartnerInfo2.f481f = pOBPartnerInfo.f481f;
        pOBPartnerInfo2.f482g = pOBPartnerInfo.f482g;
        pOBPartnerInfo2.f483h = pOBPartnerInfo.f483h;
        pOBPartnerInfo2.f484i = pOBPartnerInfo.f484i;
        pOBPartnerInfo2.f485j = pOBPartnerInfo.m1032a(str, pOBAdSizeArr);
        return pOBPartnerInfo2;
    }

    public static POBPartnerInfo build(JSONObject jSONObject) {
        POBPartnerInfo pOBPartnerInfo = new POBPartnerInfo();
        pOBPartnerInfo.f476a = jSONObject.optString("pubmaticPartnerId");
        pOBPartnerInfo.f477b = jSONObject.optString("name");
        pOBPartnerInfo.f478c = jSONObject.optString("accountName");
        pOBPartnerInfo.f479d = jSONObject.optString("bidderCode");
        pOBPartnerInfo.f480e = jSONObject.optDouble("rev_share");
        pOBPartnerInfo.f481f = jSONObject.optLong("timeout");
        pOBPartnerInfo.f482g = jSONObject.optString("kgp");
        pOBPartnerInfo.f483h = jSONObject.optBoolean("video");
        JSONObject optJSONObject = jSONObject.optJSONObject("klm");
        if (optJSONObject != null && optJSONObject.length() > 0) {
            pOBPartnerInfo.f484i = pOBPartnerInfo.m1031a(optJSONObject);
        }
        return pOBPartnerInfo;
    }

    public String getAccountName() {
        return this.f478c;
    }

    public String getBidderCode() {
        return this.f479d;
    }

    public String getKeyGenerationPattern() {
        return this.f482g;
    }

    public String getName() {
        return this.f477b;
    }

    public Map getPlacementMappings() {
        return this.f484i;
    }

    public String getPubMaticPartnerId() {
        return this.f476a;
    }

    public double getRevShare() {
        return this.f480e;
    }

    public List<Map<String, String>> getSlotInfoMappings() {
        return this.f485j;
    }

    public long getTimeout() {
        return this.f481f;
    }

    public boolean isVideo() {
        return this.f483h;
    }
}
