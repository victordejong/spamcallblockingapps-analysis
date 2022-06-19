package com.huawei.hms.hatool;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.huawei.hms.hatool.i */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/i.class */
public final class C2366i {

    /* renamed from: b */
    public static Map<String, C2374m> f7525b = new HashMap();

    /* renamed from: c */
    public static C2366i f7526c;

    /* renamed from: a */
    public C2372l f7527a = new C2372l();

    /* renamed from: c */
    public static C2366i m37672c() {
        if (f7526c == null) {
            m37671d();
        }
        return f7526c;
    }

    /* renamed from: d */
    public static void m37671d() {
        synchronized (C2366i.class) {
            try {
                if (f7526c == null) {
                    f7526c = new C2366i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public C2374m m37675a(String str) {
        return f7525b.get(str);
    }

    /* renamed from: a */
    public Set<String> m37676a() {
        return f7525b.keySet();
    }

    /* renamed from: a */
    public void m37674a(String str, C2374m c2374m) {
        f7525b.put(str, c2374m);
    }

    /* renamed from: b */
    public C2372l m37673b() {
        return this.f7527a;
    }
}
