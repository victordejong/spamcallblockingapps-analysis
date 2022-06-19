package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONAccount.class */
public class JSONAccount implements Serializable {
    private static final long serialVersionUID = 7215290681593012478L;
    private String name;
    private String type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONAccount jSONAccount = (JSONAccount) obj;
        String str = this.name;
        if (str != null) {
            if (!str.equals(jSONAccount.name)) {
                return false;
            }
        } else if (jSONAccount.name != null) {
            return false;
        }
        String str2 = this.type;
        String str3 = jSONAccount.type;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getName() {
        return this.name;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.type;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "JSONAccount{name='" + this.name + "', type='" + this.type + "'}";
    }
}
