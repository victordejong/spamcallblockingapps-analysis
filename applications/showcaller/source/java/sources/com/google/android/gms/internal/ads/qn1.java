package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qn1.class */
public final class qn1 {

    /* renamed from: a */
    private final Map<String, String> f28571a = new ConcurrentHashMap();

    /* renamed from: b */
    final /* synthetic */ rn1 f28572b;

    public qn1(rn1 rn1Var) {
        this.f28572b = rn1Var;
    }

    /* renamed from: a */
    public static /* synthetic */ qn1 m11848a(qn1 qn1Var) {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = qn1Var.f28571a;
        map = qn1Var.f28572b.f29047c;
        map2.putAll(map);
        return qn1Var;
    }

    /* renamed from: b */
    public final qn1 m11847b(jj2 jj2Var) {
        this.f28571a.put("gqi", jj2Var.f24897b);
        return this;
    }

    /* renamed from: c */
    public final qn1 m11846c(ej2 ej2Var) {
        this.f28571a.put("aai", ej2Var.f22251w);
        return this;
    }

    /* renamed from: d */
    public final qn1 m11845d(String str, String str2) {
        this.f28571a.put(str, str2);
        return this;
    }

    /* renamed from: e */
    public final void m11844e() {
        Executor executor;
        executor = this.f28572b.f29046b;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.pn1

            /* renamed from: d */
            private final qn1 f28071d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28071d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28071d.m11842g();
            }
        });
    }

    /* renamed from: f */
    public final String m11843f() {
        wn1 wn1Var;
        wn1Var = this.f28572b.f29045a;
        return wn1Var.m8767b(this.f28571a);
    }

    /* renamed from: g */
    public final /* synthetic */ void m11842g() {
        wn1 wn1Var;
        wn1Var = this.f28572b.f29045a;
        wn1Var.m8768a(this.f28571a);
    }
}
