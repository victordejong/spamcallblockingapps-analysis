package com.huawei.hms.hatool;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.huawei.hms.hatool.e0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/e0.class */
public final class C2356e0 {

    /* renamed from: b */
    public static C2356e0 f7511b;

    /* renamed from: a */
    public volatile Map<String, C2359f0> f7512a = new HashMap();

    /* renamed from: a */
    public static C2356e0 m37726a() {
        if (f7511b == null) {
            m37723b();
        }
        return f7511b;
    }

    /* renamed from: b */
    public static void m37723b() {
        synchronized (C2356e0.class) {
            try {
                if (f7511b == null) {
                    f7511b = new C2356e0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final C2359f0 m37725a(String str) {
        if (!this.f7512a.containsKey(str)) {
            this.f7512a.put(str, new C2359f0());
        }
        return this.f7512a.get(str);
    }

    /* renamed from: a */
    public C2359f0 m37724a(String str, long j) {
        C2359f0 m37725a = m37725a(str);
        m37725a.m37711a(j);
        return m37725a;
    }
}
