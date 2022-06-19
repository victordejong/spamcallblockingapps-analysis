package com.callapp.common.model.json;

import com.callapp.common.util.RegexUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONEmail.class */
public class JSONEmail extends CallAppJSONObject {
    public static final transient int EMAIL_HOME_TYPE_ID = 1;
    public static final transient int EMAIL_MOBILE_TYPE_ID = 4;
    public static final transient int EMAIL_OTHER_TYPE_ID = 3;
    public static final transient int EMAIL_WORK_TYPE_ID = 2;
    private static final long serialVersionUID = -67169535885166852L;
    private boolean callappUser;
    private String email;
    private int type;

    public JSONEmail() {
        this.callappUser = false;
    }

    public JSONEmail(JSONEmail jSONEmail) {
        super(jSONEmail.isFromUserProfile());
        this.callappUser = false;
        this.email = jSONEmail.email;
        this.type = jSONEmail.type;
    }

    public JSONEmail(String str, int i) {
        this(str, i, false);
    }

    public JSONEmail(String str, int i, boolean z) {
        super(z);
        this.callappUser = false;
        setEmail(str);
        setType(i);
    }

    public static boolean isValidEmail(String str) {
        return StringUtils.m26045b((CharSequence) RegexUtils.m31890k(str));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONEmail)) {
            return false;
        }
        JSONEmail jSONEmail = (JSONEmail) obj;
        String str = this.email;
        return str == null ? jSONEmail.email == null : str.equalsIgnoreCase(jSONEmail.email);
    }

    public String getEmail() {
        return this.email;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.email;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public boolean isCallappUser() {
        return this.callappUser;
    }

    public void setCallappUser(boolean z) {
        this.callappUser = z;
    }

    public void setEmail(String str) {
        if (isValidEmail(str)) {
            this.email = str.toLowerCase();
        }
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "JSONEmail{type=" + this.type + ", email='" + this.email + "'}";
    }
}
