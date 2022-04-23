package com.facebook.appevents.i;

import android.util.Log;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/i/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f19623a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final String f19624b = "com.facebook.appevents.i.a";

    /* renamed from: c  reason: collision with root package name */
    private static final List<C0391a> f19625c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f19626d = new CopyOnWriteArraySet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.appevents.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/i/a$a.class */
    public static final class C0391a {

        /* renamed from: a  reason: collision with root package name */
        String f19627a;

        /* renamed from: b  reason: collision with root package name */
        Map<String, String> f19628b;

        C0391a(String str, Map<String, String> map) {
            this.f19627a = str;
            this.f19628b = map;
        }
    }

    public static String a(String str) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        String str2 = str;
        try {
            if (f19623a) {
                str2 = str;
                if (b(str)) {
                    str2 = "_removed_";
                }
            }
            return str2;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    private static String a(String str, String str2) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            try {
                for (C0391a aVar : new ArrayList(f19625c)) {
                    if (aVar != null && str.equals(aVar.f19627a)) {
                        for (String str3 : aVar.f19628b.keySet()) {
                            if (str2.equals(str3)) {
                                return aVar.f19628b.get(str3);
                            }
                        }
                        continue;
                    }
                }
                return null;
            } catch (Exception e) {
                Log.w(f19624b, "getMatchedRuleType failed", e);
                return null;
            }
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    public static void a() {
        String str;
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                f19623a = true;
                if (!com.facebook.internal.b.b.a.a(a.class)) {
                    try {
                        p a2 = q.a(g.m(), false);
                        if (!(a2 == null || (str = a2.l) == null || str.isEmpty())) {
                            JSONObject jSONObject = new JSONObject(str);
                            f19625c.clear();
                            f19626d.clear();
                            Iterator<String> keys = jSONObject.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                                if (jSONObject2 != null) {
                                    JSONObject optJSONObject = jSONObject2.optJSONObject("restrictive_param");
                                    C0391a aVar = new C0391a(next, new HashMap());
                                    if (optJSONObject != null) {
                                        aVar.f19628b = ae.a(optJSONObject);
                                        f19625c.add(aVar);
                                    }
                                    if (jSONObject2.has("process_event_name")) {
                                        f19626d.add(aVar.f19627a);
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    public static void a(Map<String, String> map, String str) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (f19623a) {
                    HashMap hashMap = new HashMap();
                    for (String str2 : new ArrayList(map.keySet())) {
                        String a2 = a(str, str2);
                        if (a2 != null) {
                            hashMap.put(str2, a2);
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
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    private static boolean b(String str) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return f19626d.contains(str);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }
}
