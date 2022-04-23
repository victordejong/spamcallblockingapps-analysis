package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3497e6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbao.class */
public final class zzbao {
    static {
        new C3497e6();
    }

    /* renamed from: a */
    public static Bundle m15956a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        Bundle bundle = new Bundle();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                if (opt instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) opt).booleanValue());
                } else if (opt instanceof Double) {
                    bundle.putDouble(next, ((Double) opt).doubleValue());
                } else if (opt instanceof Integer) {
                    bundle.putInt(next, ((Integer) opt).intValue());
                } else if (opt instanceof Long) {
                    bundle.putLong(next, ((Long) opt).longValue());
                } else if (opt instanceof String) {
                    bundle.putString(next, (String) opt);
                } else if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (!(jSONArray == null || jSONArray.length() == 0)) {
                        int length = jSONArray.length();
                        Object obj = null;
                        for (int i = 0; obj == null && i < length; i++) {
                            obj = !jSONArray.isNull(i) ? jSONArray.opt(i) : null;
                        }
                        if (obj == null) {
                            String valueOf = String.valueOf(next);
                            zzbbq.m15852d(valueOf.length() != 0 ? "Expected JSONArray with at least 1 non-null element for key:".concat(valueOf) : new String("Expected JSONArray with at least 1 non-null element for key:"));
                        } else if (obj instanceof JSONObject) {
                            Bundle[] bundleArr = new Bundle[length];
                            for (int i2 = 0; i2 < length; i2++) {
                                bundleArr[i2] = !jSONArray.isNull(i2) ? m15956a(jSONArray.optJSONObject(i2)) : null;
                            }
                            bundle.putParcelableArray(next, bundleArr);
                        } else if (obj instanceof Number) {
                            double[] dArr = new double[jSONArray.length()];
                            for (int i3 = 0; i3 < length; i3++) {
                                dArr[i3] = jSONArray.optDouble(i3);
                            }
                            bundle.putDoubleArray(next, dArr);
                        } else if (obj instanceof CharSequence) {
                            String[] strArr = new String[length];
                            for (int i4 = 0; i4 < length; i4++) {
                                strArr[i4] = !jSONArray.isNull(i4) ? jSONArray.optString(i4) : null;
                            }
                            bundle.putStringArray(next, strArr);
                        } else if (obj instanceof Boolean) {
                            boolean[] zArr = new boolean[length];
                            for (int i5 = 0; i5 < length; i5++) {
                                zArr[i5] = jSONArray.optBoolean(i5);
                            }
                            bundle.putBooleanArray(next, zArr);
                        } else {
                            zzbbq.m15852d(String.format("JSONArray with unsupported type %s for key:%s", obj.getClass().getCanonicalName(), next));
                        }
                    }
                } else if (opt instanceof JSONObject) {
                    bundle.putBundle(next, m15956a((JSONObject) opt));
                } else {
                    String valueOf2 = String.valueOf(next);
                    zzbbq.m15852d(valueOf2.length() != 0 ? "Unsupported type for key:".concat(valueOf2) : new String("Unsupported type for key:"));
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static String m15960a(zzbat zzbatVar) {
        return m15959a((Object) zzbatVar);
    }

    /* renamed from: a */
    public static String m15959a(Object obj) {
        if (obj == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            m15963a(jsonWriter, obj);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e) {
            zzbbq.m15855b("Error when writing JSON.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static List<String> m15964a(JsonReader jsonReader) throws IllegalStateException, IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    /* renamed from: a */
    public static List<String> m15957a(JSONArray jSONArray, List<String> list) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static JSONObject m15958a(String str, Object obj) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(str, obj);
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m15955a(JSONObject jSONObject, String str) throws JSONException {
        JSONObject jSONObject2;
        try {
            jSONObject2 = jSONObject.getJSONObject(str);
        } catch (JSONException e) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject.put(str, jSONObject3);
            jSONObject2 = jSONObject3;
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static JSONObject m15954a(JSONObject jSONObject, String... strArr) {
        JSONObject b = m15951b(jSONObject, strArr);
        if (b == null) {
            return null;
        }
        return b.optJSONObject(strArr[strArr.length - 1]);
    }

    /* renamed from: a */
    public static void m15963a(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
        } else if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
        } else if (obj instanceof String) {
            jsonWriter.value((String) obj);
        } else if (obj instanceof zzbat) {
            ((zzbat) obj).mo13449a(jsonWriter);
        } else if (obj instanceof Map) {
            jsonWriter.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    m15963a(jsonWriter.name((String) key), entry.getValue());
                }
            }
            jsonWriter.endObject();
        } else if (obj instanceof List) {
            jsonWriter.beginArray();
            for (Object obj2 : (List) obj) {
                m15963a(jsonWriter, obj2);
            }
            jsonWriter.endArray();
        } else {
            jsonWriter.nullValue();
        }
    }

    /* renamed from: a */
    public static void m15962a(JsonWriter jsonWriter, JSONArray jSONArray) throws IOException {
        try {
            jsonWriter.beginArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                if (obj instanceof String) {
                    jsonWriter.value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    m15961a(jsonWriter, (JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    m15962a(jsonWriter, (JSONArray) obj);
                } else {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                    sb.append("unable to write field: ");
                    sb.append(valueOf);
                    throw new JSONException(sb.toString());
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public static void m15961a(JsonWriter jsonWriter, JSONObject jSONObject) throws IOException {
        try {
            jsonWriter.beginObject();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    jsonWriter.name(next).value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.name(next).value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.name(next).value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    m15961a(jsonWriter.name(next), (JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    m15962a(jsonWriter.name(next), (JSONArray) obj);
                } else {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                    sb.append("unable to write field: ");
                    sb.append(valueOf);
                    throw new JSONException(sb.toString());
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public static boolean m15953a(boolean z, JSONObject jSONObject, String... strArr) {
        JSONObject b = m15951b(jSONObject, strArr);
        if (b == null) {
            return false;
        }
        return b.optBoolean(strArr[strArr.length - 1], false);
    }

    /* renamed from: b */
    public static Map<String, String> m15952b(JsonReader jsonReader) throws IllegalStateException, IOException {
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            hashMap.put(jsonReader.nextName(), jsonReader.nextString());
        }
        jsonReader.endObject();
        return hashMap;
    }

    /* renamed from: b */
    public static JSONObject m15951b(JSONObject jSONObject, String[] strArr) {
        for (int i = 0; i < strArr.length - 1; i++) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[i]);
        }
        return jSONObject;
    }

    /* renamed from: c */
    public static JSONObject m15950c(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException {
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONObject.put(nextName, m15949d(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONObject.put(nextName, m15950c(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextDouble());
            } else if (JsonToken.STRING.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextString());
            } else {
                String valueOf = String.valueOf(peek);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("unexpected json token: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            }
        }
        jsonReader.endObject();
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONArray m15949d(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException {
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONArray.put(m15949d(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONArray.put(m15950c(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else if (JsonToken.STRING.equals(peek)) {
                jSONArray.put(jsonReader.nextString());
            } else {
                String valueOf = String.valueOf(peek);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("unexpected json token: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            }
        }
        jsonReader.endArray();
        return jSONArray;
    }
}
