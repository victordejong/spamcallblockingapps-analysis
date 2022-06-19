package com.facebook.appevents.p282c;

import com.facebook.C10181g;
import com.facebook.appevents.C10002c;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.c.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c/a.class */
public final class C10006a {

    /* renamed from: a */
    private static boolean f33261a = false;

    /* renamed from: b */
    private static final List<C10007a> f33262b = new ArrayList();

    /* renamed from: c */
    private static final Set<String> f33263c = new HashSet();

    /* renamed from: com.facebook.appevents.c.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c/a$a.class */
    public static final class C10007a {

        /* renamed from: a */
        String f33264a;

        /* renamed from: b */
        List<String> f33265b;

        C10007a(String str, List<String> list) {
            this.f33264a = str;
            this.f33265b = list;
        }
    }

    /* renamed from: a */
    public static void m23639a() {
        if (C10249a.m23108a(C10006a.class)) {
            return;
        }
        try {
            f33261a = true;
            m23636b();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10006a.class);
        }
    }

    /* renamed from: a */
    public static void m23638a(List<C10002c> list) {
        if (C10249a.m23108a(C10006a.class)) {
            return;
        }
        try {
            if (!f33261a) {
                return;
            }
            Iterator<C10002c> it2 = list.iterator();
            while (it2.hasNext()) {
                if (f33263c.contains(it2.next().f33251c)) {
                    it2.remove();
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10006a.class);
        }
    }

    /* renamed from: a */
    public static void m23637a(Map<String, String> map, String str) {
        if (C10249a.m23108a(C10006a.class)) {
            return;
        }
        try {
            if (!f33261a) {
                return;
            }
            ArrayList<String> arrayList = new ArrayList(map.keySet());
            for (C10007a c10007a : new ArrayList(f33262b)) {
                if (c10007a.f33264a.equals(str)) {
                    for (String str2 : arrayList) {
                        if (c10007a.f33265b.contains(str2)) {
                            map.remove(str2);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10006a.class);
        }
    }

    /* renamed from: b */
    private static void m23636b() {
        synchronized (C10006a.class) {
            try {
                if (C10249a.m23108a(C10006a.class)) {
                    return;
                }
                try {
                    C10302p m23026a = C10306q.m23026a(C10181g.m23286m(), false);
                    if (m23026a == null) {
                        return;
                    }
                    String str = m23026a.f33855l;
                    if (!str.isEmpty()) {
                        JSONObject jSONObject = new JSONObject(str);
                        f33262b.clear();
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                            if (jSONObject2 != null) {
                                if (jSONObject2.optBoolean("is_deprecated_event")) {
                                    f33263c.add(next);
                                } else {
                                    JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                                    C10007a c10007a = new C10007a(next, new ArrayList());
                                    if (optJSONArray != null) {
                                        c10007a.f33265b = C10213ae.m23220a(optJSONArray);
                                    }
                                    f33262b.add(c10007a);
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                } catch (Throwable th) {
                    C10249a.m23106a(th, C10006a.class);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
