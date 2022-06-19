package com.pubmatic.sdk.openwrap.core;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBImpression.class */
public class POBImpression {

    /* renamed from: a */
    private Map<String, List<String>> f726a;
    protected POBRequest.AdPosition adPosition;
    protected final String adUnitId;

    /* renamed from: b */
    private POBBanner f727b;

    /* renamed from: c */
    private POBVideo f728c;

    /* renamed from: d */
    private boolean f729d;

    /* renamed from: e */
    private boolean f730e;

    /* renamed from: id */
    protected final String f731id;
    protected String pmZoneId;
    protected String testCreativeId;

    public POBImpression(String str, String str2) {
        this.adPosition = POBRequest.AdPosition.UNKNOWN;
        this.f731id = str;
        this.adUnitId = str2;
    }

    public POBImpression(String str, String str2, boolean z, boolean z2) {
        this(str, str2);
        this.f730e = z;
        this.f729d = z2;
    }

    /* renamed from: a */
    private String m867a() {
        StringBuffer stringBuffer;
        Map<String, List<String>> m864b = m864b();
        if (m864b == null || m864b.isEmpty()) {
            return null;
        }
        StringBuffer stringBuffer2 = null;
        for (String str : m864b.keySet()) {
            if (stringBuffer2 == null) {
                stringBuffer = new StringBuffer();
            } else {
                stringBuffer2.append("|");
                stringBuffer = stringBuffer2;
            }
            stringBuffer.append(str);
            stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            int i = 0;
            Iterator<String> it = m864b().get(str).iterator();
            while (true) {
                stringBuffer2 = stringBuffer;
                if (it.hasNext()) {
                    String next = it.next();
                    if (i > 0) {
                        stringBuffer.append(",");
                    }
                    stringBuffer.append(next);
                    i++;
                }
            }
        }
        if (stringBuffer2 == null) {
            return null;
        }
        return stringBuffer2.toString();
    }

    /* renamed from: a */
    private JSONObject m866a(String str, Object... objArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(SDKConstants.PARAM_KEY, str);
            jSONObject.putOpt("value", new JSONArray(objArr));
        } catch (JSONException e) {
            PMLog.warn("POBImpression", "Not able to generate Json with key/value pair.", new Object[0]);
        }
        return jSONObject;
    }

    /* renamed from: a */
    private JSONObject m865a(JSONArray jSONArray) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (jSONArray != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt(POBCommonConstants.KEYWORDS_PARAM, jSONArray);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.putOpt("pubmatic", jSONObject2);
                jSONObject.putOpt("bidder", jSONObject3);
            }
            if (this.f730e) {
                jSONObject.putOpt("reward", 1);
            }
            return jSONObject;
        } catch (JSONException e) {
            PMLog.warn("POBImpression", "Not able to generate Ext Json.", new Object[0]);
            return null;
        }
    }

    /* renamed from: b */
    Map<String, List<String>> m864b() {
        return this.f726a;
    }

    /* renamed from: c */
    String m863c() {
        return this.pmZoneId;
    }

    public POBRequest.AdPosition getAdPosition() {
        return this.adPosition;
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public String getId() {
        return this.f731id;
    }

    public JSONObject getImpressionJson() {
        JSONArray jSONArray;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", getId());
        if (POBInstanceProvider.getSdkConfig().isUseInternalBrowser()) {
            jSONObject.put(POBConstants.KEY_CLICK_BROWSER, 0);
        } else {
            jSONObject.put(POBConstants.KEY_CLICK_BROWSER, 1);
        }
        jSONObject.put(POBConstants.KEY_DISPLAY_MANAGER, POBCommonConstants.SDK_NAME);
        jSONObject.put(POBConstants.KEY_DISPLAY_MANAGER_VERSION, "1.8.2");
        jSONObject.put(POBConstants.KEY_TAG_ID, getAdUnitId());
        if (!POBUtils.isNullOrEmpty(m863c())) {
            jSONArray = new JSONArray();
            jSONArray.put(m866a(POBCommonConstants.PM_ZONE_ID_PARAM, m863c()));
        } else {
            jSONArray = null;
        }
        JSONArray jSONArray2 = jSONArray;
        if (!POBUtils.isNullOrEmpty(getTestCreativeId())) {
            jSONArray2 = jSONArray;
            if (jSONArray == null) {
                jSONArray2 = new JSONArray();
            }
            jSONArray2.put(m866a("testcrid", getTestCreativeId()));
        }
        String m867a = m867a();
        JSONArray jSONArray3 = jSONArray2;
        if (m867a != null) {
            jSONArray3 = jSONArray2;
            if (jSONArray2 == null) {
                jSONArray3 = new JSONArray();
            }
            jSONArray3.put(m866a(POBCommonConstants.SSP_CUSTOM_KEY, m867a));
        }
        JSONObject m865a = m865a(jSONArray3);
        if (m865a != null && m865a.length() > 0) {
            jSONObject.putOpt(POBConstants.KEY_EXTENSION, m865a);
        }
        jSONObject.put(POBConstants.KEY_SECURE, POBInstanceProvider.getSdkConfig().isRequestSecureCreative() ? 1 : 0);
        POBBanner pOBBanner = this.f727b;
        if (pOBBanner != null) {
            pOBBanner.setAdPosition(this.adPosition);
            POBBanner pOBBanner2 = this.f727b;
            jSONObject.put(POBConstants.KEY_BANNER, pOBBanner2.getRTBJson(pOBBanner2.getSupportedAPIs()));
        }
        POBVideo pOBVideo = this.f728c;
        if (pOBVideo != null) {
            pOBVideo.setPosition(this.adPosition);
            jSONObject.put("video", this.f728c.getRTBJson());
        }
        jSONObject.put(POBConstants.KEY_INTERSTITIAL, this.f729d ? 1 : 0);
        return jSONObject;
    }

    public String getTestCreativeId() {
        return this.testCreativeId;
    }

    public boolean isInterstitial() {
        return this.f729d;
    }

    public void setAdPosition(POBRequest.AdPosition adPosition) {
        this.adPosition = adPosition;
    }

    public void setBanner(POBBanner pOBBanner) {
        this.f727b = pOBBanner;
    }

    public void setCustomParam(Map<String, List<String>> map) {
        this.f726a = map;
    }

    public void setInterstitial(boolean z) {
        this.f729d = z;
    }

    public void setPMZoneId(String str) {
        this.pmZoneId = str;
    }

    public void setTestCreativeId(String str) {
        this.testCreativeId = str;
    }

    public void setVideo(POBVideo pOBVideo) {
        this.f728c = pOBVideo;
    }
}
