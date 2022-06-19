package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBanner.class */
public class POBBanner {

    /* renamed from: a */
    private POBAdSize[] f674a;

    /* renamed from: b */
    private POBRequest.AdPosition f675b = POBRequest.AdPosition.UNKNOWN;

    public POBBanner(POBAdSize... pOBAdSizeArr) {
        this.f674a = pOBAdSizeArr;
    }

    public JSONObject getRTBJson(Set<Integer> set) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(POBConstants.KEY_POSITION, this.f675b.getValue());
        jSONObject.put(POBConstants.KEY_FORMAT, getSizeArray(this.f674a));
        if (!set.isEmpty()) {
            jSONObject.put(POBCommonConstants.API_PARAM, new JSONArray((Collection) set));
        }
        return jSONObject;
    }

    public JSONArray getSizeArray(POBAdSize... pOBAdSizeArr) {
        JSONArray jSONArray = new JSONArray();
        for (POBAdSize pOBAdSize : pOBAdSizeArr) {
            if (pOBAdSize != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(POBConstants.KEY_W, pOBAdSize.getAdWidth());
                    jSONObject.put(POBConstants.KEY_H, pOBAdSize.getAdHeight());
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    PMLog.error("POBBanner", "Error on formatting width/height in ad request.", new Object[0]);
                }
            }
        }
        return jSONArray;
    }

    public Set<Integer> getSupportedAPIs() {
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(POBRequest.API.MRAID2.getValue()));
        hashSet.add(Integer.valueOf(POBRequest.API.MRAID3.getValue()));
        if (POBInstanceProvider.getSdkConfig().getHtmlMeasurementProvider() != null) {
            hashSet.add(Integer.valueOf(POBRequest.API.OMSDK.getValue()));
        }
        return hashSet;
    }

    public void setAdPosition(POBRequest.AdPosition adPosition) {
        this.f675b = adPosition;
    }

    public void setAdSizes(POBAdSize... pOBAdSizeArr) {
        this.f674a = pOBAdSizeArr;
    }
}
