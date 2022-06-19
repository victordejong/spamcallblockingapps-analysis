package com.facebook.p094a.p101f;

import android.util.Log;
import com.facebook.C2095j;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.f.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/f/b.class */
public final class C1902b {

    /* renamed from: a */
    private static boolean f5744a = false;

    /* renamed from: b */
    private static final String f5745b = C1902b.class.getCanonicalName();

    /* renamed from: c */
    private static final List<C1903a> f5746c = new ArrayList();

    /* renamed from: com.facebook.a.f.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/f/b$a.class */
    public static class C1903a {

        /* renamed from: a */
        String f5747a;

        /* renamed from: b */
        Map<String, String> f5748b;

        C1903a(String str, Map<String, String> map) {
            this.f5747a = str;
            this.f5748b = map;
        }
    }

    /* renamed from: a */
    private static String m15938a(String str, String str2) {
        String str3;
        try {
            loop0: for (C1903a c1903a : new ArrayList(f5746c)) {
                if (c1903a != null && str.equals(c1903a.f5747a)) {
                    for (String str4 : c1903a.f5748b.keySet()) {
                        if (str2.equals(str4)) {
                            str3 = c1903a.f5748b.get(str4);
                            break loop0;
                        }
                    }
                    continue;
                }
            }
        } catch (Exception e) {
            Log.w(f5745b, "getMatchedRuleType failed", e);
        }
        str3 = null;
        return str3;
    }

    /* renamed from: a */
    public static void m15939a() {
        f5744a = true;
        m15936b();
    }

    /* renamed from: a */
    public static void m15937a(Map<String, String> map, String str) {
        if (!f5744a) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (String str2 : new ArrayList(map.keySet())) {
            String m15938a = m15938a(str, str2);
            if (m15938a != null) {
                hashMap.put(str2, m15938a);
                map.remove(str2);
            }
        }
        if (hashMap.size() <= 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : hashMap.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
            map.put("_restrictedParams", jSONObject.toString());
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    private static void m15936b() {
        String m15592n;
        try {
            C2048l m15584a = C2050m.m15584a(C2095j.m15356l(), false);
            if (m15584a == null || (m15592n = m15584a.m15592n()) == null || m15592n.isEmpty()) {
                return;
            }
            JSONObject jSONObject = new JSONObject(m15592n);
            f5746c.clear();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (jSONObject2 != null) {
                    JSONObject optJSONObject = jSONObject2.optJSONObject("restrictive_param");
                    C1903a c1903a = new C1903a(next, new HashMap());
                    if (optJSONObject != null) {
                        c1903a.f5748b = C2079x.m15459a(optJSONObject);
                        f5746c.add(c1903a);
                    }
                }
            }
        } catch (Exception e) {
        }
    }
}
