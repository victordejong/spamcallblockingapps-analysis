package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONAWSSessionCredentials.class */
public class JSONAWSSessionCredentials implements Serializable {
    private static final long serialVersionUID = -3615323021858385880L;
    private String accessKey;
    private String secretKey;
    private String sessionToken;

    public JSONAWSSessionCredentials() {
    }

    public JSONAWSSessionCredentials(String str, String str2, String str3) {
        this.accessKey = str;
        this.secretKey = str2;
        this.sessionToken = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONAWSSessionCredentials jSONAWSSessionCredentials = (JSONAWSSessionCredentials) obj;
        String str = this.accessKey;
        if (str != null) {
            if (!str.equals(jSONAWSSessionCredentials.accessKey)) {
                return false;
            }
        } else if (jSONAWSSessionCredentials.accessKey != null) {
            return false;
        }
        String str2 = this.secretKey;
        if (str2 != null) {
            if (!str2.equals(jSONAWSSessionCredentials.secretKey)) {
                return false;
            }
        } else if (jSONAWSSessionCredentials.secretKey != null) {
            return false;
        }
        String str3 = this.sessionToken;
        String str4 = jSONAWSSessionCredentials.sessionToken;
        return str3 != null ? str3.equals(str4) : str4 == null;
    }

    public String getAccessKey() {
        return this.accessKey;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    public String getSessionToken() {
        return this.sessionToken;
    }

    public int hashCode() {
        String str = this.accessKey;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.secretKey;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.sessionToken;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public void setAccessKey(String str) {
        this.accessKey = str;
    }

    public void setSecretKey(String str) {
        this.secretKey = str;
    }

    public void setSessionToken(String str) {
        this.sessionToken = str;
    }

    public String toString() {
        return "JSONAWSSessionCredentials{accessKey='" + this.accessKey + "', secretKey='" + this.secretKey + "', sessionToken='" + this.sessionToken + "'}";
    }
}
