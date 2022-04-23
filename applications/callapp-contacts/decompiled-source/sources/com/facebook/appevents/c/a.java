package com.facebook.appevents.c;

import com.facebook.appevents.c;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f19507a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final List<C0386a> f19508b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f19509c = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.appevents.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c/a$a.class */
    public static final class C0386a {

        /* renamed from: a  reason: collision with root package name */
        String f19510a;

        /* renamed from: b  reason: collision with root package name */
        List<String> f19511b;

        C0386a(String str, List<String> list) {
            this.f19510a = str;
            this.f19511b = list;
        }
    }

    public static void a() {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                f19507a = true;
                b();
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    public static void a(List<c> list) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (f19507a) {
                    Iterator<c> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (f19509c.contains(it2.next().f19503c)) {
                            it2.remove();
                        }
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
                if (f19507a) {
                    ArrayList<String> arrayList = new ArrayList(map.keySet());
                    for (C0386a aVar : new ArrayList(f19508b)) {
                        if (aVar.f19510a.equals(str)) {
                            for (String str2 : arrayList) {
                                if (aVar.f19511b.contains(str2)) {
                                    map.remove(str2);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    private static void b() {
        synchronized (a.class) {
            try {
                if (!com.facebook.internal.b.b.a.a(a.class)) {
                    try {
                        p a2 = q.a(g.m(), false);
                        if (a2 != null) {
                            String str = a2.l;
                            if (!str.isEmpty()) {
                                JSONObject jSONObject = new JSONObject(str);
                                f19508b.clear();
                                Iterator<String> keys = jSONObject.keys();
                                while (keys.hasNext()) {
                                    String next = keys.next();
                                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                                    if (jSONObject2 != null) {
                                        if (jSONObject2.optBoolean("is_deprecated_event")) {
                                            f19509c.add(next);
                                        } else {
                                            JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                                            C0386a aVar = new C0386a(next, new ArrayList());
                                            if (optJSONArray != null) {
                                                aVar.f19511b = ae.a(optJSONArray);
                                            }
                                            f19508b.add(aVar);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, a.class);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
