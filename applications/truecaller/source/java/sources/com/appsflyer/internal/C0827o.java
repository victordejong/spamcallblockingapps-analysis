package com.appsflyer.internal;

import android.content.Context;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.o */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/o.class */
public final class C0827o {
    public final Context valueOf;

    public C0827o() {
    }

    public C0827o(Context context) {
        this.valueOf = context.getApplicationContext();
    }

    private static List<Object> AFInAppEventParameterName(JSONArray jSONArray) throws JSONException {
        List<Object> list;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                list = AFInAppEventParameterName((JSONArray) obj);
            } else {
                list = obj;
                if (obj instanceof JSONObject) {
                    list = values((JSONObject) obj);
                }
            }
            arrayList.add(list);
        }
        return arrayList;
    }

    public static JSONObject AFInAppEventParameterName(Map<String, ?> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), AFKeystoreWrapper(entry.getValue()));
            } catch (JSONException e) {
            }
        }
        return jSONObject;
    }

    private static Object AFKeystoreWrapper(Object obj) {
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
                            jSONArray.put(AFKeystoreWrapper(obj3));
                        }
                        return jSONArray;
                    } else if (obj.getClass().isArray()) {
                        int length = Array.getLength(obj);
                        JSONArray jSONArray2 = new JSONArray();
                        for (int i = 0; i < length; i++) {
                            jSONArray2.put(AFKeystoreWrapper(Array.get(obj, i)));
                        }
                        return jSONArray2;
                    } else if (obj instanceof Map) {
                        return AFInAppEventParameterName((Map) obj);
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

    public static Map<String, Object> values(JSONObject jSONObject) throws JSONException {
        List<Object> list;
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                list = AFInAppEventParameterName((JSONArray) obj);
            } else {
                list = obj;
                if (obj instanceof JSONObject) {
                    list = values((JSONObject) obj);
                }
            }
            hashMap.put(next, list);
        }
        return hashMap;
    }
}
