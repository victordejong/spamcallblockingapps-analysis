package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.c */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/c.class */
public class C2388c {

    /* renamed from: a */
    public static final Map<Class<?>, AbstractC2396h> f2972a = new HashMap();

    /* renamed from: com.facebook.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$a.class */
    public static final class C2389a implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: com.facebook.internal.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$b.class */
    public static final class C2390b implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            bundle.putInt(str, ((Integer) obj).intValue());
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: com.facebook.internal.c$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$c.class */
    public static final class C2391c implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            bundle.putLong(str, ((Long) obj).longValue());
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: com.facebook.internal.c$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$d.class */
    public static final class C2392d implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: com.facebook.internal.c$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$e.class */
    public static final class C2393e implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            bundle.putString(str, (String) obj);
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: com.facebook.internal.c$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$f.class */
    public static final class C2394f implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            throw new IllegalArgumentException("Unexpected type from JSON");
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : (String[]) obj) {
                jSONArray.put(str2);
            }
            jSONObject.put(str, jSONArray);
        }
    }

    /* renamed from: com.facebook.internal.c$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$g.class */
    public static final class C2395g implements AbstractC2396h {
        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34908a(Bundle bundle, String str, Object obj) throws JSONException {
            JSONArray jSONArray = (JSONArray) obj;
            ArrayList<String> arrayList = new ArrayList<>();
            if (jSONArray.length() == 0) {
                bundle.putStringArrayList(str, arrayList);
                return;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj2 = jSONArray.get(i);
                if (obj2 instanceof String) {
                    arrayList.add((String) obj2);
                } else {
                    throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                }
            }
            bundle.putStringArrayList(str, arrayList);
        }

        @Override // com.facebook.internal.C2388c.AbstractC2396h
        /* renamed from: a */
        public void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
        }
    }

    /* renamed from: com.facebook.internal.c$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$h.class */
    public interface AbstractC2396h {
        /* renamed from: a */
        void mo34908a(Bundle bundle, String str, Object obj) throws JSONException;

        /* renamed from: a */
        void mo34907a(JSONObject jSONObject, String str, Object obj) throws JSONException;
    }

    static {
        f2972a.put(Boolean.class, new C2389a());
        f2972a.put(Integer.class, new C2390b());
        f2972a.put(Long.class, new C2391c());
        f2972a.put(Double.class, new C2392d());
        f2972a.put(String.class, new C2393e());
        f2972a.put(String[].class, new C2394f());
        f2972a.put(JSONArray.class, new C2395g());
    }

    /* renamed from: a */
    public static Bundle m34909a(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (!(obj == null || obj == JSONObject.NULL)) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m34909a((JSONObject) obj));
                } else {
                    AbstractC2396h hVar = f2972a.get(obj.getClass());
                    if (hVar != null) {
                        hVar.mo34908a(bundle, next, obj);
                    } else {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static JSONObject m34910a(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                if (obj instanceof List) {
                    JSONArray jSONArray = new JSONArray();
                    for (String str2 : (List) obj) {
                        jSONArray.put(str2);
                    }
                    jSONObject.put(str, jSONArray);
                } else if (obj instanceof Bundle) {
                    jSONObject.put(str, m34910a((Bundle) obj));
                } else {
                    AbstractC2396h hVar = f2972a.get(obj.getClass());
                    if (hVar != null) {
                        hVar.mo34907a(jSONObject, str, obj);
                    } else {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                }
            }
        }
        return jSONObject;
    }
}
