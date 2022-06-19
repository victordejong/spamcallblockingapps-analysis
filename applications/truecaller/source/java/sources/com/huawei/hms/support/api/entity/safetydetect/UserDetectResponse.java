package com.huawei.hms.support.api.entity.safetydetect;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/safetydetect/UserDetectResponse.class */
public class UserDetectResponse {
    private String responseToken;

    public UserDetectResponse(String str) {
        this.responseToken = new JSONObject(str).getString("responseToken");
    }

    public String getResponseToken() {
        return this.responseToken;
    }
}
