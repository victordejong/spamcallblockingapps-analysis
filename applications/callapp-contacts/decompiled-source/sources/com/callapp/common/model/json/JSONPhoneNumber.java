package com.callapp.common.model.json;

import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONPhoneNumber.class */
public class JSONPhoneNumber extends CallAppJSONObject {
    private static final long serialVersionUID = -4682706181284000400L;
    private String phoneNumber;
    private int type;

    public JSONPhoneNumber() {
    }

    public JSONPhoneNumber(Phone phone) {
        this.phoneNumber = phone.a();
    }

    public JSONPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public static JSONPhoneNumber fromRawPhoneNumByRegion(String str, int i, String str2) {
        JSONPhoneNumber jSONPhoneNumber;
        if (StringUtils.b((CharSequence) str) && StringUtils.b((CharSequence) str2)) {
            Phone a2 = Phone.a(str, str2);
            if (a2.isValidForSearch()) {
                jSONPhoneNumber = new JSONPhoneNumber();
                jSONPhoneNumber.setPhoneNumber(a2.a());
                jSONPhoneNumber.setType(i);
                return jSONPhoneNumber;
            }
        }
        jSONPhoneNumber = null;
        return jSONPhoneNumber;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONPhoneNumber)) {
            return false;
        }
        JSONPhoneNumber jSONPhoneNumber = (JSONPhoneNumber) obj;
        String str = this.phoneNumber;
        return str == null ? jSONPhoneNumber.phoneNumber == null : str.equals(jSONPhoneNumber.phoneNumber);
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.phoneNumber;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "JSONPhoneNumber{phoneNumber='" + this.phoneNumber + "', type=" + this.type + '}';
    }
}
