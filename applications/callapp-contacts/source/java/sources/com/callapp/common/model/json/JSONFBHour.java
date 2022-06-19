package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBHour.class */
public class JSONFBHour extends CallAppJSONObject {
    private static final long serialVersionUID = 1095255609646348775L;
    @JsonProperty("key")
    private String key;
    @JsonProperty("value")
    private String value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONFBHour jSONFBHour = (JSONFBHour) obj;
        String str = this.key;
        if (str != null) {
            if (!str.equals(jSONFBHour.key)) {
                return false;
            }
        } else if (jSONFBHour.key != null) {
            return false;
        }
        String str2 = this.value;
        String str3 = jSONFBHour.value;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getKey() {
        return this.key;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String toString() {
        return "JSONFBHour{key='" + this.key + "', value='" + this.value + "'}";
    }
}
