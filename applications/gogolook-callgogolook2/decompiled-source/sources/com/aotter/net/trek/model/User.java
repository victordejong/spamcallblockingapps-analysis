package com.aotter.net.trek.model;

import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.Json;
import com.aotter.net.trek.common.util.Utils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/User.class */
public class User {
    public static final String USER_BIRTHDAY_KEY = "birthday";
    public static final String USER_EMAIL_KEY = "email";
    public static final String USER_FB_KEY = "fbId";
    public static final String USER_GENDER_KEY = "gender";
    public static final String USER_HASH_EMAIL_KEY = "hashEmail";
    public static final String USER_HASH_PHONE_KEY = "hashPhone";
    public static final String USER_META_KEY = "meta";
    public static final String USER_PHONE_KEY = "phone";
    @NonNull
    public final Map<String, Object> mUserDetailsMap = new HashMap();

    public void setBirthday(String str) {
        if (str != null) {
            this.mUserDetailsMap.put(USER_BIRTHDAY_KEY, str);
        }
    }

    public void setEmail(String str) {
        if (str != null) {
            this.mUserDetailsMap.put("email", str);
            setHashEmail(str);
        }
    }

    public void setFbId(String str) {
        if (str != null) {
            this.mUserDetailsMap.put(USER_FB_KEY, str);
        }
    }

    public void setGender(String str) {
        if (str != null) {
            this.mUserDetailsMap.put(USER_GENDER_KEY, str);
        }
    }

    public void setHashEmail(String str) {
        if (str != null) {
            this.mUserDetailsMap.put(USER_HASH_EMAIL_KEY, Utils.sha256(str.replaceAll(" ", "").toLowerCase()));
        }
    }

    public void setHashPhone(String str) {
        if (str != null) {
            this.mUserDetailsMap.put(USER_HASH_PHONE_KEY, Utils.sha256(str.replaceAll(" ", "")));
        }
    }

    public void setMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.mUserDetailsMap.put("meta", jSONObject);
        }
    }

    public void setPhone(String str) {
        if (str != null) {
            this.mUserDetailsMap.put("phone", str);
            setHashPhone(str);
        }
    }

    public JSONObject toJsonObject() {
        return new JSONObject(this.mUserDetailsMap);
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mUserDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
