package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.c */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/c.class */
public class C2016c {

    /* renamed from: a */
    private static final Map<Class<?>, AbstractC2024a> f5973a = new HashMap();

    /* renamed from: com.facebook.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/c$a.class */
    public interface AbstractC2024a {
        /* renamed from: a */
        void mo15649a(Bundle bundle, String str, Object obj);
    }

    static {
        f5973a.put(Boolean.class, new AbstractC2024a() { // from class: com.facebook.internal.c.1
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            }
        });
        f5973a.put(Integer.class, new AbstractC2024a() { // from class: com.facebook.internal.c.2
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                bundle.putInt(str, ((Integer) obj).intValue());
            }
        });
        f5973a.put(Long.class, new AbstractC2024a() { // from class: com.facebook.internal.c.3
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                bundle.putLong(str, ((Long) obj).longValue());
            }
        });
        f5973a.put(Double.class, new AbstractC2024a() { // from class: com.facebook.internal.c.4
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            }
        });
        f5973a.put(String.class, new AbstractC2024a() { // from class: com.facebook.internal.c.5
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                bundle.putString(str, (String) obj);
            }
        });
        f5973a.put(String[].class, new AbstractC2024a() { // from class: com.facebook.internal.c.6
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                throw new IllegalArgumentException("Unexpected type from JSON");
            }
        });
        f5973a.put(JSONArray.class, new AbstractC2024a() { // from class: com.facebook.internal.c.7
            @Override // com.facebook.internal.C2016c.AbstractC2024a
            /* renamed from: a */
            public void mo15649a(Bundle bundle, String str, Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList<String> arrayList = new ArrayList<>();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    Object obj2 = jSONArray.get(i);
                    if (!(obj2 instanceof String)) {
                        throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                    }
                    arrayList.add((String) obj2);
                }
                bundle.putStringArrayList(str, arrayList);
            }
        });
    }

    /* renamed from: a */
    public static Bundle m15650a(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m15650a((JSONObject) obj));
                } else {
                    AbstractC2024a abstractC2024a = f5973a.get(obj.getClass());
                    if (abstractC2024a == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    abstractC2024a.mo15649a(bundle, next, obj);
                }
            }
        }
        return bundle;
    }
}
