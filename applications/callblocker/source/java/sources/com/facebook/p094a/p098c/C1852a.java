package com.facebook.p094a.p098c;

import com.facebook.C2095j;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import com.facebook.p094a.C1848c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.a.c.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/c/a.class */
public final class C1852a {

    /* renamed from: a */
    private static boolean f5634a = false;

    /* renamed from: b */
    private static final List<C1853a> f5635b = new ArrayList();

    /* renamed from: c */
    private static final Set<String> f5636c = new HashSet();

    /* renamed from: com.facebook.a.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/c/a$a.class */
    public static class C1853a {

        /* renamed from: a */
        String f5637a;

        /* renamed from: b */
        List<String> f5638b;

        C1853a(String str, List<String> list) {
            this.f5637a = str;
            this.f5638b = list;
        }
    }

    /* renamed from: a */
    public static void m16099a() {
        f5634a = true;
        m16096b();
    }

    /* renamed from: a */
    public static void m16098a(List<C1848c> list) {
        if (!f5634a) {
            return;
        }
        Iterator<C1848c> it = list.iterator();
        while (it.hasNext()) {
            if (f5636c.contains(it.next().m16108a())) {
                it.remove();
            }
        }
    }

    /* renamed from: a */
    public static void m16097a(Map<String, String> map, String str) {
        if (!f5634a) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        for (C1853a c1853a : new ArrayList(f5635b)) {
            if (c1853a.f5637a.equals(str)) {
                for (String str2 : arrayList) {
                    if (c1853a.f5638b.contains(str2)) {
                        map.remove(str2);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    private static void m16096b() {
        synchronized (C1852a.class) {
            try {
                C2048l m15584a = C2050m.m15584a(C2095j.m15356l(), false);
                if (m15584a != null) {
                    String m15592n = m15584a.m15592n();
                    if (!m15592n.isEmpty()) {
                        JSONObject jSONObject = new JSONObject(m15592n);
                        f5635b.clear();
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                            if (jSONObject2 != null) {
                                if (jSONObject2.optBoolean("is_deprecated_event")) {
                                    f5636c.add(next);
                                } else {
                                    JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                                    C1853a c1853a = new C1853a(next, new ArrayList());
                                    if (optJSONArray != null) {
                                        c1853a.f5638b = C2079x.m15460a(optJSONArray);
                                    }
                                    f5635b.add(c1853a);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
