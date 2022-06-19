package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.sdk.C1479t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/JsonUtils.class */
public class JsonUtils {
    public static final String EMPTY_JSON = "{}";

    /* renamed from: a */
    private static Object m5102a(Object obj) throws JSONException {
        if (obj == JSONObject.NULL) {
            return null;
        }
        if (obj instanceof JSONObject) {
            return toStringObjectMap((JSONObject) obj);
        }
        List list = obj;
        if (obj instanceof JSONArray) {
            list = toList((JSONArray) obj);
        }
        return list;
    }

    /* renamed from: a */
    private static <T> List<T> m5101a(JSONArray jSONArray, List<T> list) throws JSONException {
        if (jSONArray == null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(m5102a(jSONArray.get(i)));
        }
        return arrayList;
    }

    public static boolean containsCaseInsensitiveString(String str, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                Object obj = jSONArray.get(i);
                if ((obj instanceof String) && ((String) obj).equalsIgnoreCase(str)) {
                    return true;
                }
            } catch (JSONException e) {
                return false;
            }
        }
        return false;
    }

    public static JSONArray deepCopy(JSONArray jSONArray) {
        JSONObject jSONObject;
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                Object obj = jSONArray.get(i);
                if (obj instanceof JSONObject) {
                    jSONObject = deepCopy((JSONObject) obj);
                } else {
                    jSONObject = obj;
                    if (obj instanceof JSONArray) {
                        jSONObject = deepCopy((JSONArray) obj);
                    }
                }
                jSONArray2.put(i, jSONObject);
            } catch (JSONException e) {
                C1479t.m5108h("JsonUtils", "Failed to copy over item at index " + i + " to JSONArray deep copy");
            }
        }
        return jSONArray2;
    }

    public static JSONObject deepCopy(JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = new JSONObject();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONObject) {
                    jSONObject2 = deepCopy((JSONObject) obj);
                } else {
                    jSONObject2 = obj;
                    if (obj instanceof JSONArray) {
                        jSONObject2 = deepCopy((JSONArray) obj);
                    }
                }
                jSONObject3.put(next, jSONObject2);
            } catch (JSONException e) {
                C1479t.m5108h("JsonUtils", "Failed to copy over item for key '" + next + "' to JSONObject deep copy");
            }
        }
        return jSONObject3;
    }

    public static JSONObject deserialize(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Throwable th) {
            C1479t.m5107i("JsonUtils", "Failed to deserialize into JSON: " + str);
            return null;
        }
    }

    public static Boolean getBoolean(JSONObject jSONObject, String str, Boolean bool) {
        Boolean bool2 = bool;
        if (jSONObject != null) {
            bool2 = bool;
            if (jSONObject.has(str)) {
                try {
                    bool2 = Boolean.valueOf(jSONObject.getBoolean(str));
                } catch (JSONException e) {
                    boolean z = true;
                    if (getInt(jSONObject, str, (bool == null || !bool.booleanValue()) ? 0 : 1) <= 0) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            }
        }
        return bool2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    public static double getDouble(JSONObject jSONObject, String str, double d) {
        char c = d;
        if (jSONObject != null) {
            c = d;
            if (jSONObject.has(str)) {
                try {
                    c = jSONObject.getDouble(str);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve double property for key = " + str, e);
                    c = d;
                }
            }
        }
        return c;
    }

    public static float getFloat(JSONObject jSONObject, String str, float f) {
        float f2 = f;
        if (jSONObject != null) {
            f2 = f;
            if (jSONObject.has(str)) {
                try {
                    double d = jSONObject.getDouble(str);
                    f2 = f;
                    if (-3.4028234663852886E38d < d) {
                        f2 = f;
                        if (d < 3.4028234663852886E38d) {
                            f2 = (float) d;
                        }
                    }
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve float property for key = " + str, e);
                    f2 = f;
                }
            }
        }
        return f2;
    }

    public static Float getFloat(JSONObject jSONObject, String str, Float f) {
        Float f2 = f;
        if (jSONObject != null) {
            f2 = f;
            if (jSONObject.has(str)) {
                try {
                    double d = jSONObject.getDouble(str);
                    f2 = f;
                    if (-3.4028234663852886E38d < d) {
                        f2 = f;
                        if (d < 3.4028234663852886E38d) {
                            f2 = Float.valueOf((float) d);
                        }
                    }
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve float property for key = " + str, e);
                    f2 = f;
                }
            }
        }
        return f2;
    }

    public static int getInt(JSONObject jSONObject, String str, int i) {
        int i2 = i;
        if (jSONObject != null) {
            i2 = i;
            if (jSONObject.has(str)) {
                try {
                    i2 = jSONObject.getInt(str);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve int property for key = " + str, e);
                    i2 = i;
                }
            }
        }
        return i2;
    }

    public static List<Integer> getIntegerList(JSONObject jSONObject, String str, List<Integer> list) {
        JSONArray jSONArray = getJSONArray(jSONObject, str, null);
        if (jSONArray != null) {
            list = toIntegerList(jSONArray);
        }
        return list;
    }

    public static JSONArray getJSONArray(Object obj) {
        if (obj == null) {
            return new JSONArray();
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(obj);
        return jSONArray;
    }

    public static JSONArray getJSONArray(JSONObject jSONObject, String str, JSONArray jSONArray) {
        JSONArray jSONArray2 = jSONArray;
        if (jSONObject != null) {
            jSONArray2 = jSONArray;
            if (jSONObject.has(str)) {
                try {
                    jSONArray2 = jSONObject.getJSONArray(str);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve JSON array for key = " + str, e);
                    jSONArray2 = jSONArray;
                }
            }
        }
        return jSONArray2;
    }

    public static JSONObject getJSONObject(JSONArray jSONArray, int i, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONArray != null) {
            jSONObject2 = jSONObject;
            if (i < jSONArray.length()) {
                try {
                    jSONObject2 = jSONArray.getJSONObject(i);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve JSON object from array for index = " + i, e);
                    jSONObject2 = jSONObject;
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject getJSONObject(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        JSONObject jSONObject3 = jSONObject2;
        if (jSONObject != null) {
            jSONObject3 = jSONObject2;
            if (jSONObject.has(str)) {
                try {
                    jSONObject3 = jSONObject.getJSONObject(str);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve JSON property for key = " + str, e);
                    jSONObject3 = jSONObject2;
                }
            }
        }
        return jSONObject3;
    }

    public static List getList(JSONObject jSONObject, String str, List list) {
        List list2;
        try {
            JSONArray jSONArray = getJSONArray(jSONObject, str, null);
            list2 = list;
            if (jSONArray != null) {
                list2 = toList(jSONArray);
            }
        } catch (JSONException e) {
            list2 = list;
        }
        return list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    public static long getLong(JSONObject jSONObject, String str, long j) {
        char c = j;
        if (jSONObject != null) {
            c = j;
            if (jSONObject.has(str)) {
                try {
                    c = jSONObject.getLong(str);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve long property for key = " + str, e);
                    c = j;
                }
            }
        }
        return c;
    }

    public static Object getObject(JSONObject jSONObject, String str, Object obj) {
        Object obj2 = obj;
        if (jSONObject != null) {
            obj2 = obj;
            if (jSONObject.has(str)) {
                try {
                    Object obj3 = jSONObject.get(str);
                    obj2 = obj;
                    if (obj3 != null) {
                        obj2 = obj3;
                    }
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve Object for key = " + str, e);
                    obj2 = obj;
                }
            }
        }
        return obj2;
    }

    public static Object getObjectAtIndex(JSONArray jSONArray, int i, Object obj) {
        Object obj2 = obj;
        if (jSONArray != null) {
            obj2 = obj;
            if (jSONArray.length() > i) {
                try {
                    obj2 = jSONArray.get(i);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve object at index " + i + " for JSON array", e);
                    obj2 = obj;
                }
            }
        }
        return obj2;
    }

    public static String getString(JSONObject jSONObject, String str, String str2) {
        String str3 = str2;
        if (jSONObject != null) {
            str3 = str2;
            if (jSONObject.has(str)) {
                try {
                    str3 = jSONObject.getString(str);
                } catch (JSONException e) {
                    C1479t.m5113c("JsonUtils", "Failed to retrieve string property for key = " + str, e);
                    str3 = str2;
                }
            }
        }
        return str3;
    }

    public static JSONObject jsonObjectFromJsonString(String str, JSONObject jSONObject) {
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            C1479t.m5113c("JsonUtils", "Failed to convert JSON string '" + str + "' to JSONObject", e);
            return jSONObject;
        }
    }

    public static String maybeConvertToIndentedString(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            str = new JSONObject(str).toString(i);
        } catch (JSONException e) {
        }
        return str;
    }

    public static String maybeConvertToIndentedString(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.toString(4);
        } catch (JSONException e) {
            return jSONObject.toString();
        }
    }

    public static <T> List<T> optList(JSONArray jSONArray, List<T> list) {
        try {
            return m5101a(jSONArray, list);
        } catch (JSONException e) {
            return list;
        }
    }

    public static void putAll(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object object = getObject(jSONObject2, next, null);
            if (object != null) {
                putObject(jSONObject, next, object);
            }
        }
    }

    public static void putBoolean(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, z);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put boolean property for key = " + str, e);
            }
        }
    }

    public static void putDouble(JSONObject jSONObject, String str, double d) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, d);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put double property for key = " + str, e);
            }
        }
    }

    public static void putInt(JSONObject jSONObject, String str, int i) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, i);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put int property for key = " + str, e);
            }
        }
    }

    public static void putJSONObject(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, jSONObject2);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put JSON property for key = " + str, e);
            }
        }
    }

    public static void putJsonArray(JSONObject jSONObject, String str, JSONArray jSONArray) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, jSONArray);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put JSONArray property for key = " + str, e);
            }
        }
    }

    public static void putLong(JSONObject jSONObject, String str, long j) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, j);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put long property for key = " + str, e);
            }
        }
    }

    public static void putObject(JSONObject jSONObject, String str, Object obj) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, obj);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put Object property for key = " + str, e);
            }
        }
    }

    public static void putString(JSONObject jSONObject, String str, String str2) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, str2);
            } catch (JSONException e) {
                C1479t.m5113c("JsonUtils", "Failed to put String property for key = " + str, e);
            }
        }
    }

    public static void removeObjectsForKeys(JSONObject jSONObject, String[] strArr) {
        for (String str : strArr) {
            jSONObject.remove(str);
        }
    }

    public static JSONObject shallowCopy(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                jSONObject2.put(next, jSONObject.get(next));
            } catch (JSONException e) {
                C1479t.m5108h("JsonUtils", "Failed to copy over item for key '" + next + "' to JSONObject copy");
            }
        }
        return jSONObject2;
    }

    public static Bundle toBundle(Object obj) {
        JSONObject jSONObject;
        if (obj instanceof JSONObject) {
            jSONObject = (JSONObject) obj;
        } else {
            if (obj instanceof String) {
                try {
                    jSONObject = new JSONObject((String) obj);
                } catch (JSONException e) {
                }
            }
            jSONObject = null;
        }
        return toBundle(jSONObject);
    }

    public static Bundle toBundle(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return new Bundle();
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (jSONObject.isNull(next)) {
                bundle.putString(next, null);
            } else {
                Object opt = jSONObject.opt(next);
                if (opt instanceof JSONObject) {
                    bundle.putBundle(next, toBundle((JSONObject) opt));
                } else if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (jSONArray.length() == 0) {
                        bundle.putStringArrayList(next, new ArrayList<>(0));
                    } else if (getObjectAtIndex(jSONArray, 0, null) instanceof String) {
                        ArrayList<String> arrayList = new ArrayList<>(jSONArray.length());
                        for (int i = 0; i < jSONArray.length(); i++) {
                            arrayList.add((String) getObjectAtIndex(jSONArray, i, null));
                        }
                        bundle.putStringArrayList(next, arrayList);
                    } else {
                        bundle.putParcelableArrayList(next, toBundle(jSONArray));
                    }
                } else if (opt instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) opt).booleanValue());
                } else if (opt instanceof String) {
                    bundle.putString(next, (String) opt);
                } else if (opt instanceof Integer) {
                    bundle.putInt(next, ((Integer) opt).intValue());
                } else if (opt instanceof Long) {
                    bundle.putLong(next, ((Long) opt).longValue());
                } else if (opt instanceof Double) {
                    bundle.putDouble(next, ((Double) opt).doubleValue());
                }
            }
        }
        return bundle;
    }

    public static ArrayList<Bundle> toBundle(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new ArrayList<>();
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(toBundle(jSONArray.optJSONObject(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0027 -> B:6:0x001f). Please submit an issue!!! */
    public static List<Integer> toIntegerList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                arrayList.add((Integer) jSONArray.get(i));
            } catch (Throwable th) {
            }
        }
        return arrayList;
    }

    public static <T> List<T> toList(JSONArray jSONArray) throws JSONException {
        return m5101a(jSONArray, new ArrayList());
    }

    public static Map<String, String> toStringMap(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, m5102a(jSONObject.get(next)).toString());
        }
        return hashMap;
    }

    public static Map<String, Object> toStringObjectMap(String str, Map<String, Object> map) {
        try {
            return toStringObjectMap(new JSONObject(str));
        } catch (JSONException e) {
            C1479t.m5113c("JsonUtils", "Failed to convert json string '" + str + "' to map", e);
            return map;
        }
    }

    public static Map<String, Object> toStringObjectMap(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, m5102a(jSONObject.get(next)));
        }
        return hashMap;
    }

    public static boolean valueExists(JSONArray jSONArray, Object obj) {
        if (jSONArray == null || obj == null) {
            return false;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            if (obj.equals(getObjectAtIndex(jSONArray, i, null))) {
                return true;
            }
        }
        return false;
    }

    public static boolean valueExists(JSONObject jSONObject, String str) {
        return jSONObject != null && jSONObject.has(str);
    }
}
