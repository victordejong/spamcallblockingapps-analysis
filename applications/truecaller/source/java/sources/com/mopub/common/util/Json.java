package com.mopub.common.util;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Json.class */
public class Json {
    public static <T> T getJsonValue(JSONObject jSONObject, String str, Class<T> cls) {
        if (jSONObject == null || str == null || cls == null) {
            throw new IllegalArgumentException("Cannot pass any null argument to getJsonValue");
        }
        Object opt = jSONObject.opt(str);
        if (opt == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8725C2("Tried to get Json value with key: ", str, ", but it was null"));
            return null;
        } else if (cls.isInstance(opt)) {
            return cls.cast(opt);
        } else {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder m8692L = C22128a.m8692L("Tried to get Json value with key: ", str, ", of type: ");
            m8692L.append(cls.toString());
            m8692L.append(", its type did not match");
            MoPubLog.log(sdkLogEvent, m8692L.toString());
            return null;
        }
    }

    public static String[] jsonArrayToStringArray(String str) {
        try {
            JSONArray jSONArray = ((JSONObject) new JSONTokener(C22128a.m8725C2("{key:", str, "}")).nextValue()).getJSONArray(AnalyticsConstants.KEY);
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = jSONArray.getString(i);
            }
            return strArr;
        } catch (JSONException e) {
            return new String[0];
        }
    }

    public static Map<String, String> jsonStringToMap(String str) throws JSONException {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            return hashMap;
        }
        JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.getString(next));
        }
        return hashMap;
    }

    public static String mapToJsonString(Map<String, String> map) {
        if (map == null) {
            return "{}";
        }
        StringBuilder m8728C = C22128a.m8728C("{");
        boolean z = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!z) {
                m8728C.append(",");
            }
            m8728C.append("\"");
            m8728C.append(entry.getKey());
            m8728C.append("\":\"");
            m8728C.append(entry.getValue());
            m8728C.append("\"");
            z = false;
        }
        m8728C.append("}");
        return m8728C.toString();
    }
}
