package com.millennialmedia.internal.utils;

import com.millennialmedia.MMLog;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/JSONUtils.class */
public class JSONUtils {
    private static final String TAG = "com.millennialmedia.internal.utils.JSONUtils";

    public static JSONArray buildFromList(List list) {
        if (list == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            jSONArray.put(buildFromObject(obj));
        }
        return jSONArray;
    }

    public static JSONObject buildFromMap(Map<String, ? extends Object> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), buildFromObject(entry.getValue()));
            }
        } catch (Exception e) {
            MMLog.m4068e(TAG, "Error building JSON from Map");
        }
        return jSONObject;
    }

    public static Object buildFromObject(Object obj) {
        if (obj instanceof Map) {
            return buildFromMap((Map) obj);
        }
        JSONArray jSONArray = obj;
        if (obj instanceof List) {
            jSONArray = buildFromList((List) obj);
        }
        return jSONArray;
    }

    public static String[] convertToStringArray(JSONArray jSONArray) {
        if (jSONArray == null) {
            return new String[0];
        }
        String[] strArr = new String[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            strArr[i] = jSONArray.getString(i);
        }
        return strArr;
    }

    public static String getNonEmptyString(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            String string = jSONObject.getString(str);
            if (!Utils.isEmpty(string)) {
                return string;
            }
            throw new JSONException("The value for key '" + str + "' is null or empty.");
        }
        throw new JSONException("The passed jsonObject is null.");
    }

    public static String[] getStringArray(JSONObject jSONObject, String str) {
        return jSONObject != null ? convertToStringArray(jSONObject.getJSONArray(str)) : new String[0];
    }

    public static boolean isEmpty(JSONArray jSONArray) {
        return jSONArray == null || jSONArray.length() <= 0;
    }

    public static int optInt(JSONObject jSONObject, String str, int i) {
        int i2 = i;
        if (jSONObject != null) {
            i2 = jSONObject.optInt(str, i);
        }
        return i2;
    }
}
