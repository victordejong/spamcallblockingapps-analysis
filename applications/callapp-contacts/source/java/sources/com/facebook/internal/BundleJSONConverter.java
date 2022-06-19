package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\bH\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/facebook/internal/BundleJSONConverter;", "", "()V", "SETTERS", "", "Ljava/lang/Class;", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "convertToBundle", "Landroid/os/Bundle;", "jsonObject", "Lorg/json/JSONObject;", "convertToJSON", "bundle", "Setter", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/BundleJSONConverter.class */
public final class BundleJSONConverter {
    public static final BundleJSONConverter INSTANCE = new BundleJSONConverter();
    private static final Map<Class<?>, Setter> SETTERS;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H&J \u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H&¨\u0006\f"}, m4298d2 = {"Lcom/facebook/internal/BundleJSONConverter$Setter;", "", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", "key", "", "value", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/BundleJSONConverter$Setter.class */
    public interface Setter {
        void setOnBundle(Bundle bundle, String str, Object obj) throws JSONException;

        void setOnJSON(JSONObject jSONObject, String str, Object obj) throws JSONException;
    }

    static {
        HashMap hashMap = new HashMap();
        SETTERS = hashMap;
        hashMap.put(Boolean.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.1
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                bundle.putBoolean(key, ((Boolean) value).booleanValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                json.put(key, value);
            }
        });
        hashMap.put(Integer.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.2
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                bundle.putInt(key, ((Integer) value).intValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                json.put(key, value);
            }
        });
        hashMap.put(Long.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.3
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                bundle.putLong(key, ((Long) value).longValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                json.put(key, value);
            }
        });
        hashMap.put(Double.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.4
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                bundle.putDouble(key, ((Double) value).doubleValue());
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                json.put(key, value);
            }
        });
        hashMap.put(String.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.5
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                bundle.putString(key, (String) value);
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                json.put(key, value);
            }
        });
        hashMap.put(String[].class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.6
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                throw new IllegalArgumentException("Unexpected type from JSON");
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                JSONArray jSONArray = new JSONArray();
                for (String str : (String[]) value) {
                    jSONArray.put(str);
                }
                json.put(key, jSONArray);
            }
        });
        hashMap.put(JSONArray.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.7
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnBundle(Bundle bundle, String key, Object value) throws JSONException {
                C18524p.m3840d(bundle, "bundle");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                JSONArray jSONArray = (JSONArray) value;
                ArrayList arrayList = new ArrayList();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(key, arrayList);
                    return;
                }
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    Object obj = jSONArray.get(i);
                    if (!(obj instanceof String)) {
                        throw new IllegalArgumentException("Unexpected type in an array: " + obj.getClass());
                    }
                    arrayList.add(obj);
                }
                bundle.putStringArrayList(key, arrayList);
            }

            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public final void setOnJSON(JSONObject json, String key, Object value) throws JSONException {
                C18524p.m3840d(json, "json");
                C18524p.m3840d(key, "key");
                C18524p.m3840d(value, "value");
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        });
    }

    private BundleJSONConverter() {
    }

    public static final Bundle convertToBundle(JSONObject jsonObject) throws JSONException {
        C18524p.m3840d(jsonObject, "jsonObject");
        Bundle bundle = new Bundle();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            Object value = jsonObject.get(key);
            if (value != JSONObject.NULL) {
                if (value instanceof JSONObject) {
                    bundle.putBundle(key, convertToBundle((JSONObject) value));
                } else {
                    Setter setter = SETTERS.get(value.getClass());
                    if (setter == null) {
                        throw new IllegalArgumentException("Unsupported type: " + value.getClass());
                    }
                    C18524p.m3843b(key, "key");
                    C18524p.m3843b(value, "value");
                    setter.setOnBundle(bundle, key, value);
                }
            }
        }
        return bundle;
    }

    public static final JSONObject convertToJSON(Bundle bundle) throws JSONException {
        C18524p.m3840d(bundle, "bundle");
        JSONObject jSONObject = new JSONObject();
        for (String key : bundle.keySet()) {
            Object obj = bundle.get(key);
            if (obj != null) {
                C18524p.m3843b(obj, "bundle[key] ?: // Null i…orted.\n          continue");
                if (obj instanceof List) {
                    JSONArray jSONArray = new JSONArray();
                    for (String str : (List) obj) {
                        jSONArray.put(str);
                    }
                    jSONObject.put(key, jSONArray);
                } else if (obj instanceof Bundle) {
                    jSONObject.put(key, convertToJSON((Bundle) obj));
                } else {
                    Setter setter = SETTERS.get(obj.getClass());
                    if (setter == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    C18524p.m3843b(key, "key");
                    setter.setOnJSON(jSONObject, key, obj);
                }
            }
        }
        return jSONObject;
    }
}
