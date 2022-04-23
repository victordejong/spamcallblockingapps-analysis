package com.aotter.net.trek.common.util;

import android.text.TextUtils;
import androidx.core.app.Person;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Json.class */
public class Json {
    public static String[] jsonArrayToStringArray(String str) {
        try {
            JSONArray jSONArray = ((JSONObject) new JSONTokener("{key:" + str + CssParser.BLOCK_END).nextValue()).getJSONArray(Person.KEY_KEY);
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = jSONArray.getString(i);
            }
            return strArr;
        } catch (JSONException e) {
            return new String[0];
        }
    }

    public static Map<String, Object> jsonStringToMap(String str) {
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

    public static String mapToJsonString(Map<String, ?> map) {
        if (map == null) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(CssParser.BLOCK_START);
        boolean z = true;
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            if (!z) {
                sb.append(",");
            }
            String str = "\"";
            sb.append("\"");
            sb.append(entry.getKey());
            sb.append("\":");
            if (entry.getValue() instanceof String) {
                sb.append("\"");
                sb.append(entry.getValue());
            } else if (entry.getValue() instanceof JSONObject) {
                str = entry.getValue().toString();
            } else {
                sb.append(entry.getValue());
                z = false;
            }
            sb.append(str);
            z = false;
        }
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }
}
