package com.google.android.gms.ads.internal.util;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import com.google.android.gms.internal.ads.zzazk;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbh.class */
public final class zzbh {
    private static final zzbj<Map<String, ?>> zzegm = new zzbk();

    public static String zza(zzbm zzbmVar) {
        return zzj(zzbmVar);
    }

    public static List<String> zza(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static List<String> zza(JSONArray jSONArray, List<String> list) {
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    public static JSONObject zza(JSONObject jSONObject, String... strArr) {
        JSONObject zzb = zzb(jSONObject, strArr);
        if (zzb == null) {
            return null;
        }
        return zzb.optJSONObject(strArr[strArr.length - 1]);
    }

    private static void zza(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
        } else if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
        } else if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
        } else if (obj instanceof String) {
            jsonWriter.value((String) obj);
        } else if (obj instanceof zzbm) {
            ((zzbm) obj).zza(jsonWriter);
        } else if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (Object obj2 : (List) obj) {
                zza(jsonWriter, obj2);
            }
            jsonWriter.endArray();
        } else {
            jsonWriter.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    zza(jsonWriter.name((String) key), entry.getValue());
                }
            }
            jsonWriter.endObject();
        }
    }

    private static void zza(JsonWriter jsonWriter, JSONArray jSONArray) {
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
                    zza(jsonWriter, (JSONObject) obj);
                } else if (!(obj instanceof JSONArray)) {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                    sb.append("unable to write field: ");
                    sb.append(valueOf);
                    throw new JSONException(sb.toString());
                } else {
                    zza(jsonWriter, (JSONArray) obj);
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static void zza(JsonWriter jsonWriter, JSONObject jSONObject) {
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
                    zza(jsonWriter.name(next), (JSONObject) obj);
                } else if (!(obj instanceof JSONArray)) {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                    sb.append("unable to write field: ");
                    sb.append(valueOf);
                    throw new JSONException(sb.toString());
                } else {
                    zza(jsonWriter.name(next), (JSONArray) obj);
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static boolean zza(boolean z, JSONObject jSONObject, String... strArr) {
        JSONObject zzb = zzb(jSONObject, strArr);
        if (zzb == null) {
            return false;
        }
        return zzb.optBoolean(strArr[strArr.length - 1], false);
    }

    public static Map<String, String> zzb(JsonReader jsonReader) {
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            hashMap.put(jsonReader.nextName(), jsonReader.nextString());
        }
        jsonReader.endObject();
        return hashMap;
    }

    public static JSONObject zzb(JSONObject jSONObject, String str) {
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

    private static JSONObject zzb(JSONObject jSONObject, String[] strArr) {
        for (int i = 0; i < strArr.length - 1; i++) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[i]);
        }
        return jSONObject;
    }

    public static JSONObject zzc(JsonReader jsonReader) {
        Object zzd;
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                zzd = zzd(jsonReader);
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                zzd = zzc(jsonReader);
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextDouble());
            } else if (!JsonToken.STRING.equals(peek)) {
                String valueOf = String.valueOf(peek);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("unexpected json token: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else {
                zzd = jsonReader.nextString();
            }
            jSONObject.put(nextName, zzd);
        }
        jsonReader.endObject();
        return jSONObject;
    }

    public static JSONArray zzd(JsonReader jsonReader) {
        Object zzd;
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                zzd = zzd(jsonReader);
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                zzd = zzc(jsonReader);
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else if (!JsonToken.STRING.equals(peek)) {
                String valueOf = String.valueOf(peek);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("unexpected json token: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else {
                zzd = jsonReader.nextString();
            }
            jSONArray.put(zzd);
        }
        jsonReader.endArray();
        return jSONArray;
    }

    public static Bundle zzh(JSONObject jSONObject) {
        String str;
        String valueOf;
        String str2;
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
                    if (jSONArray != null && jSONArray.length() != 0) {
                        int length = jSONArray.length();
                        Object obj = null;
                        for (int i = 0; obj == null && i < length; i++) {
                            obj = !jSONArray.isNull(i) ? jSONArray.opt(i) : null;
                        }
                        if (obj == null) {
                            str = "Expected JSONArray with at least 1 non-null element for key:";
                            valueOf = String.valueOf(next);
                            if (valueOf.length() == 0) {
                                str2 = new String("Expected JSONArray with at least 1 non-null element for key:");
                            }
                            str2 = str.concat(valueOf);
                        } else if (obj instanceof JSONObject) {
                            Bundle[] bundleArr = new Bundle[length];
                            for (int i2 = 0; i2 < length; i2++) {
                                bundleArr[i2] = !jSONArray.isNull(i2) ? zzh(jSONArray.optJSONObject(i2)) : null;
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
                            str2 = String.format("JSONArray with unsupported type %s for key:%s", obj.getClass().getCanonicalName(), next);
                        }
                        zzazk.zzex(str2);
                    }
                } else if (opt instanceof JSONObject) {
                    bundle.putBundle(next, zzh((JSONObject) opt));
                } else {
                    str = "Unsupported type for key:";
                    valueOf = String.valueOf(next);
                    if (valueOf.length() == 0) {
                        str2 = new String("Unsupported type for key:");
                        zzazk.zzex(str2);
                    }
                    str2 = str.concat(valueOf);
                    zzazk.zzex(str2);
                }
            }
        }
        return bundle;
    }

    private static String zzj(Object obj) {
        if (obj == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            zza(jsonWriter, obj);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e) {
            zzazk.zzc("Error when writing JSON.", e);
            return null;
        }
    }
}
