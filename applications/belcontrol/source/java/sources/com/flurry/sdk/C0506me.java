package com.flurry.sdk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.me */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/me.class */
public final class C0506me {
    /* renamed from: a */
    public static List<JSONObject> m4472a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (!(obj instanceof JSONObject)) {
                throw new JSONException("Array contains unsupported objects. JSONArray param must contain JSON object.");
            }
            arrayList.add((JSONObject) obj);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<String, String> m4471a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!(next instanceof String)) {
                throw new JSONException("JSONObject contains unsupported type for key in the map.");
            }
            String str = next;
            Object obj = jSONObject.get(str);
            if (!(obj instanceof String)) {
                throw new JSONException("JSONObject contains unsupported type for value in the map.");
            }
            hashMap.put(str, (String) obj);
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m4470a(JSONObject jSONObject, String str, float f) {
        jSONObject.putOpt(str, Float.valueOf(f));
    }

    /* renamed from: a */
    public static void m4469a(JSONObject jSONObject, String str, Object obj) {
        if (obj == null) {
            jSONObject.put(str, JSONObject.NULL);
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: a */
    public static void m4468a(JSONObject jSONObject, String str, String str2) {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    /* renamed from: b */
    public static List<String> m4467b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (!(obj instanceof String)) {
                throw new JSONException("Array contains unsupported objects. JSONArray param must contain String object.");
            }
            arrayList.add((String) obj);
        }
        return arrayList;
    }
}
