package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONRegistrationResponse.class */
public class JSONRegistrationResponse implements Serializable {
    private static final long serialVersionUID = 720051267515098190L;
    private String token;
    private String userId;

    public JSONRegistrationResponse() {
    }

    public JSONRegistrationResponse(String str, String str2) {
        this.userId = str;
        this.token = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONRegistrationResponse jSONRegistrationResponse = (JSONRegistrationResponse) obj;
        String str = this.token;
        if (str == null) {
            if (jSONRegistrationResponse.token != null) {
                return false;
            }
        } else if (!str.equals(jSONRegistrationResponse.token)) {
            return false;
        }
        String str2 = this.userId;
        return str2 == null ? jSONRegistrationResponse.userId == null : str2.equals(jSONRegistrationResponse.userId);
    }

    public String getToken() {
        return this.token;
    }

    public String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.token;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.userId;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
