package com.huawei.hms.support.api.entity.safetydetect;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/safetydetect/UrlCheckResponse.class */
public class UrlCheckResponse {
    private List<UrlCheckThreat> urlCheckThreats = new ArrayList();

    public UrlCheckResponse(String str) {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray jSONArray = jSONObject.getJSONObject("rtdResults").getJSONArray("threatType");
        for (int i = 0; i < jSONArray.length(); i++) {
            this.urlCheckThreats.add(new UrlCheckThreat(jSONArray.getInt(i)));
        }
    }

    public List<UrlCheckThreat> getUrlCheckResponse() {
        return this.urlCheckThreats;
    }
}
