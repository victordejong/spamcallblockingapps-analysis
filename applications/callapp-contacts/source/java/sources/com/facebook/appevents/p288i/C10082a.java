package com.facebook.appevents.p288i;

import android.util.Log;
import com.facebook.C10181g;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.i.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/i/a.class */
public final class C10082a {

    /* renamed from: a */
    private static boolean f33406a = false;

    /* renamed from: b */
    private static final String f33407b = "com.facebook.appevents.i.a";

    /* renamed from: c */
    private static final List<C10083a> f33408c = new ArrayList();

    /* renamed from: d */
    private static final Set<String> f33409d = new CopyOnWriteArraySet();

    /* renamed from: com.facebook.appevents.i.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/i/a$a.class */
    public static final class C10083a {

        /* renamed from: a */
        String f33410a;

        /* renamed from: b */
        Map<String, String> f33411b;

        C10083a(String str, Map<String, String> map) {
            this.f33410a = str;
            this.f33411b = map;
        }
    }

    /* renamed from: a */
    public static String m23457a(String str) {
        if (C10249a.m23108a(C10082a.class)) {
            return null;
        }
        String str2 = str;
        try {
            if (f33406a) {
                str2 = str;
                if (m23454b(str)) {
                    str2 = "_removed_";
                }
            }
            return str2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10082a.class);
            return null;
        }
    }

    /* renamed from: a */
    private static String m23456a(String str, String str2) {
        if (C10249a.m23108a(C10082a.class)) {
            return null;
        }
        try {
            try {
                for (C10083a c10083a : new ArrayList(f33408c)) {
                    if (c10083a != null && str.equals(c10083a.f33410a)) {
                        for (String str3 : c10083a.f33411b.keySet()) {
                            if (str2.equals(str3)) {
                                return c10083a.f33411b.get(str3);
                            }
                        }
                        continue;
                    }
                }
                return null;
            } catch (Exception e) {
                Log.w(f33407b, "getMatchedRuleType failed", e);
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10082a.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23458a() {
        String str;
        if (C10249a.m23108a(C10082a.class)) {
            return;
        }
        try {
            f33406a = true;
            if (C10249a.m23108a(C10082a.class)) {
                return;
            }
            try {
                C10302p m23026a = C10306q.m23026a(C10181g.m23286m(), false);
                if (m23026a != null && (str = m23026a.f33855l) != null && !str.isEmpty()) {
                    JSONObject jSONObject = new JSONObject(str);
                    f33408c.clear();
                    f33409d.clear();
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                        if (jSONObject2 != null) {
                            JSONObject optJSONObject = jSONObject2.optJSONObject("restrictive_param");
                            C10083a c10083a = new C10083a(next, new HashMap());
                            if (optJSONObject != null) {
                                c10083a.f33411b = C10213ae.m23219a(optJSONObject);
                                f33408c.add(c10083a);
                            }
                            if (jSONObject2.has("process_event_name")) {
                                f33409d.add(c10083a.f33410a);
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10082a.class);
        }
    }

    /* renamed from: a */
    public static void m23455a(Map<String, String> map, String str) {
        if (C10249a.m23108a(C10082a.class)) {
            return;
        }
        try {
            if (!f33406a) {
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str2 : new ArrayList(map.keySet())) {
                String m23456a = m23456a(str, str2);
                if (m23456a != null) {
                    hashMap.put(str2, m23456a);
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
        } catch (Throwable th) {
            C10249a.m23106a(th, C10082a.class);
        }
    }

    /* renamed from: b */
    private static boolean m23454b(String str) {
        if (C10249a.m23108a(C10082a.class)) {
            return false;
        }
        try {
            return f33409d.contains(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10082a.class);
            return false;
        }
    }
}
