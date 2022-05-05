package com.facebook.appevents.p040u;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.C2257c;
import com.facebook.internal.C2408g0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.u.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/u/a.class */
public final class C2360a {

    /* renamed from: a */
    public static boolean f2902a = false;

    /* renamed from: b */
    public static List<C2361a> f2903b = new ArrayList();

    /* renamed from: c */
    public static Set<String> f2904c = new HashSet();

    /* renamed from: com.facebook.appevents.u.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/u/a$a.class */
    public static class C2361a {

        /* renamed from: a */
        public String f2905a;

        /* renamed from: b */
        public Map<String, String> f2906b;

        public C2361a(String str, Map<String, String> map) {
            this.f2905a = str;
            this.f2906b = map;
        }
    }

    @Nullable
    /* renamed from: a */
    public static String m35031a(String str, String str2) {
        try {
            Iterator it = new ArrayList(f2903b).iterator();
            while (it.hasNext()) {
                C2361a aVar = (C2361a) it.next();
                if (aVar != null && str.equals(aVar.f2905a)) {
                    for (String str3 : aVar.f2906b.keySet()) {
                        if (str2.equals(str3)) {
                            return aVar.f2906b.get(str3);
                        }
                    }
                    continue;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m35033a() {
        f2902a = true;
    }

    /* renamed from: a */
    public static void m35030a(List<C2257c> list) {
        if (f2902a) {
            Iterator<C2257c> it = list.iterator();
            while (it.hasNext()) {
                if (m35032a(it.next().m35364d())) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m35029a(Map<String, String> map, String str) {
        if (f2902a) {
            HashMap hashMap = new HashMap();
            Iterator it = new ArrayList(map.keySet()).iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String a = m35031a(str, str2);
                if (a != null) {
                    hashMap.put(str2, a);
                    map.remove(str2);
                }
            }
            if (hashMap.size() > 0) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry entry : hashMap.entrySet()) {
                        jSONObject.put((String) entry.getKey(), entry.getValue());
                    }
                    map.put("_restrictedParams", jSONObject.toString());
                } catch (JSONException e) {
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m35032a(String str) {
        return f2904c.contains(str);
    }

    /* renamed from: b */
    public static void m35028b(String str) {
        synchronized (C2360a.class) {
            try {
                if (f2902a) {
                    try {
                        if (!str.isEmpty()) {
                            JSONObject jSONObject = new JSONObject(str);
                            f2903b.clear();
                            f2904c.clear();
                            Iterator<String> keys = jSONObject.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                                if (jSONObject2 != null) {
                                    if (jSONObject2.optBoolean("is_deprecated_event")) {
                                        f2904c.add(next);
                                    } else {
                                        JSONObject optJSONObject = jSONObject.getJSONObject(next).optJSONObject("restrictive_param");
                                        if (optJSONObject != null) {
                                            f2903b.add(new C2361a(next, C2408g0.m34841a(optJSONObject)));
                                        }
                                    }
                                }
                            }
                        }
                    } catch (JSONException | Exception e) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
