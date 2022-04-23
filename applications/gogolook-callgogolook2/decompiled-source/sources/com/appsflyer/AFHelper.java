package com.appsflyer;

import android.os.Build;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFHelper.class */
public class AFHelper {
    public static JSONObject convertToJsonObject(Map<String, ?> map) {
        return Build.VERSION.SDK_INT >= 19 ? new JSONObject(map) : m36296(map);
    }

    /* renamed from: ı */
    public static Object m36297(Object obj) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        Object obj2 = obj;
        if (!(obj instanceof JSONArray)) {
            if (obj instanceof JSONObject) {
                obj2 = obj;
            } else if (obj.equals(JSONObject.NULL)) {
                return obj;
            } else {
                try {
                    if (obj instanceof Collection) {
                        JSONArray jSONArray = new JSONArray();
                        for (Object obj3 : (Collection) obj) {
                            jSONArray.put(m36297(obj3));
                        }
                        return jSONArray;
                    } else if (obj.getClass().isArray()) {
                        int length = Array.getLength(obj);
                        JSONArray jSONArray2 = new JSONArray();
                        for (int i = 0; i < length; i++) {
                            jSONArray2.put(m36297(Array.get(obj, i)));
                        }
                        return jSONArray2;
                    } else if (obj instanceof Map) {
                        return m36296((Map) obj);
                    } else {
                        String str = obj;
                        if (!(obj instanceof Boolean)) {
                            str = obj;
                            if (!(obj instanceof Byte)) {
                                str = obj;
                                if (!(obj instanceof Character)) {
                                    str = obj;
                                    if (!(obj instanceof Double)) {
                                        str = obj;
                                        if (!(obj instanceof Float)) {
                                            str = obj;
                                            if (!(obj instanceof Integer)) {
                                                str = obj;
                                                if (!(obj instanceof Long)) {
                                                    str = obj;
                                                    if (!(obj instanceof Short)) {
                                                        str = obj instanceof String ? obj : obj.toString();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return str;
                    }
                } catch (Exception e) {
                    obj2 = JSONObject.NULL;
                }
            }
        }
        return obj2;
    }

    /* renamed from: ι */
    public static JSONObject m36296(Map<String, ?> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), m36297(entry.getValue()));
            } catch (JSONException e) {
            }
        }
        return jSONObject;
    }
}
