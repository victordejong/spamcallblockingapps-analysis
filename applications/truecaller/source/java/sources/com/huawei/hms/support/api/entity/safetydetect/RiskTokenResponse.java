package com.huawei.hms.support.api.entity.safetydetect;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/safetydetect/RiskTokenResponse.class */
public class RiskTokenResponse {
    private String riskToken;

    public RiskTokenResponse(String str) {
        this.riskToken = new JSONObject(str).getString("riskToken");
    }

    public String getRiskToken() {
        return this.riskToken;
    }
}
