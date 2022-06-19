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
/* renamed from: com.google.android.gms.internal.ads.wy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wy.class */
public final class C3614wy {

    /* renamed from: a */
    private static final AbstractC3617xa<Map<String, ?>> f17577a = new C3613wx();

    /* renamed from: a */
    public static Bundle m6853a(JSONObject jSONObject) {
        Bundle bundle;
        if (jSONObject == null) {
            bundle = null;
        } else {
            Iterator<String> keys = jSONObject.keys();
            Bundle bundle2 = new Bundle();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                if (opt != null) {
                    if (opt instanceof Boolean) {
                        bundle2.putBoolean(next, ((Boolean) opt).booleanValue());
                    } else if (opt instanceof Double) {
                        bundle2.putDouble(next, ((Double) opt).doubleValue());
                    } else if (opt instanceof Integer) {
                        bundle2.putInt(next, ((Integer) opt).intValue());
                    } else if (opt instanceof Long) {
                        bundle2.putLong(next, ((Long) opt).longValue());
                    } else if (opt instanceof String) {
                        bundle2.putString(next, (String) opt);
                    } else if (opt instanceof JSONArray) {
                        JSONArray jSONArray = (JSONArray) opt;
                        if (jSONArray != null && jSONArray.length() != 0) {
                            int length = jSONArray.length();
                            Object obj = null;
                            for (int i = 0; obj == null && i < length; i++) {
                                obj = !jSONArray.isNull(i) ? jSONArray.opt(i) : null;
                            }
                            if (obj == null) {
                                String valueOf = String.valueOf(next);
                                C3556uu.m6745e(valueOf.length() != 0 ? "Expected JSONArray with at least 1 non-null element for key:".concat(valueOf) : new String("Expected JSONArray with at least 1 non-null element for key:"));
                            } else if (obj instanceof JSONObject) {
                                Bundle[] bundleArr = new Bundle[length];
                                for (int i2 = 0; i2 < length; i2++) {
                                    bundleArr[i2] = !jSONArray.isNull(i2) ? m6853a(jSONArray.optJSONObject(i2)) : null;
                                }
                                bundle2.putParcelableArray(next, bundleArr);
                            } else if (obj instanceof Number) {
                                double[] dArr = new double[jSONArray.length()];
                                for (int i3 = 0; i3 < length; i3++) {
                                    dArr[i3] = jSONArray.optDouble(i3);
                                }
                                bundle2.putDoubleArray(next, dArr);
                            } else if (obj instanceof CharSequence) {
                                String[] strArr = new String[length];
                                for (int i4 = 0; i4 < length; i4++) {
                                    strArr[i4] = !jSONArray.isNull(i4) ? jSONArray.optString(i4) : null;
                                }
                                bundle2.putStringArray(next, strArr);
                            } else if (obj instanceof Boolean) {
                                boolean[] zArr = new boolean[length];
                                for (int i5 = 0; i5 < length; i5++) {
                                    zArr[i5] = jSONArray.optBoolean(i5);
                                }
                                bundle2.putBooleanArray(next, zArr);
                            } else {
                                C3556uu.m6745e(String.format("JSONArray with unsupported type %s for key:%s", obj.getClass().getCanonicalName(), next));
                            }
                        }
                    } else if (opt instanceof JSONObject) {
                        bundle2.putBundle(next, m6853a((JSONObject) opt));
                    } else {
                        String valueOf2 = String.valueOf(next);
                        C3556uu.m6745e(valueOf2.length() != 0 ? "Unsupported type for key:".concat(valueOf2) : new String("Unsupported type for key:"));
                    }
                }
            }
            bundle = bundle2;
        }
        return bundle;
    }

    /* renamed from: a */
    public static String m6857a(AbstractC3615wz abstractC3615wz) {
        return m6856a((Object) abstractC3615wz);
    }

    /* renamed from: a */
    private static String m6856a(Object obj) {
        String str;
        if (obj == null) {
            str = null;
        } else {
            StringWriter stringWriter = new StringWriter();
            try {
                JsonWriter jsonWriter = new JsonWriter(stringWriter);
                m6860a(jsonWriter, obj);
                jsonWriter.close();
                str = stringWriter.toString();
            } catch (IOException e) {
                C3556uu.m6748c("Error when writing JSON.", e);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static List<String> m6861a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    /* renamed from: a */
    public static List<String> m6854a(JSONArray jSONArray, List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static JSONObject m6855a(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(str, obj);
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m6852a(JSONObject jSONObject, String str) {
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
    public static JSONObject m6851a(JSONObject jSONObject, String... strArr) {
        JSONObject m6848b = m6848b(jSONObject, strArr);
        return m6848b == null ? null : m6848b.optJSONObject(strArr[strArr.length - 1]);
    }

    /* renamed from: a */
    private static void m6860a(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
        } else if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
        } else if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
        } else if (obj instanceof String) {
            jsonWriter.value((String) obj);
        } else if (obj instanceof AbstractC3615wz) {
            ((AbstractC3615wz) obj).mo6845a(jsonWriter);
        } else if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (Object obj2 : (List) obj) {
                m6860a(jsonWriter, obj2);
            }
            jsonWriter.endArray();
        } else {
            jsonWriter.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    m6860a(jsonWriter.name((String) key), entry.getValue());
                }
            }
            jsonWriter.endObject();
        }
    }

    /* renamed from: a */
    private static void m6859a(JsonWriter jsonWriter, JSONArray jSONArray) {
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
                    m6858a(jsonWriter, (JSONObject) obj);
                } else if (!(obj instanceof JSONArray)) {
                    String valueOf = String.valueOf(obj);
                    throw new JSONException(new StringBuilder(String.valueOf(valueOf).length() + 23).append("unable to write field: ").append(valueOf).toString());
                } else {
                    m6859a(jsonWriter, (JSONArray) obj);
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public static void m6858a(JsonWriter jsonWriter, JSONObject jSONObject) {
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
                    m6858a(jsonWriter.name(next), (JSONObject) obj);
                } else if (!(obj instanceof JSONArray)) {
                    String valueOf = String.valueOf(obj);
                    throw new JSONException(new StringBuilder(String.valueOf(valueOf).length() + 23).append("unable to write field: ").append(valueOf).toString());
                } else {
                    m6859a(jsonWriter.name(next), (JSONArray) obj);
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public static boolean m6850a(boolean z, JSONObject jSONObject, String... strArr) {
        boolean z2 = false;
        JSONObject m6848b = m6848b(jSONObject, strArr);
        if (m6848b != null) {
            z2 = m6848b.optBoolean(strArr[strArr.length - 1], false);
        }
        return z2;
    }

    /* renamed from: b */
    public static Map<String, String> m6849b(JsonReader jsonReader) {
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            hashMap.put(jsonReader.nextName(), jsonReader.nextString());
        }
        jsonReader.endObject();
        return hashMap;
    }

    /* renamed from: b */
    private static JSONObject m6848b(JSONObject jSONObject, String[] strArr) {
        JSONObject jSONObject2;
        int i = 0;
        while (true) {
            jSONObject2 = jSONObject;
            if (i >= strArr.length - 1) {
                break;
            } else if (jSONObject == null) {
                jSONObject2 = null;
                break;
            } else {
                jSONObject = jSONObject.optJSONObject(strArr[i]);
                i++;
            }
        }
        return jSONObject2;
    }

    /* renamed from: c */
    public static JSONObject m6847c(JsonReader jsonReader) {
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONObject.put(nextName, m6846d(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONObject.put(nextName, m6847c(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextDouble());
            } else if (!JsonToken.STRING.equals(peek)) {
                String valueOf = String.valueOf(peek);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 23).append("unexpected json token: ").append(valueOf).toString());
            } else {
                jSONObject.put(nextName, jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONArray m6846d(JsonReader jsonReader) {
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONArray.put(m6846d(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONArray.put(m6847c(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else if (!JsonToken.STRING.equals(peek)) {
                String valueOf = String.valueOf(peek);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 23).append("unexpected json token: ").append(valueOf).toString());
            } else {
                jSONArray.put(jsonReader.nextString());
            }
        }
        jsonReader.endArray();
        return jSONArray;
    }
}
