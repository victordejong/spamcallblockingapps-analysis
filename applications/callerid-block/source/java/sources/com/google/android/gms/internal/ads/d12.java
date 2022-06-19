package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/d12.class */
public final class d12<P> {

    /* renamed from: a */
    private final ConcurrentMap<c12, List<b12<P>>> f6308a = new ConcurrentHashMap();

    /* renamed from: b */
    private b12<P> f6309b;

    /* renamed from: c */
    private final Class<P> f6310c;

    private d12(Class<P> cls) {
        this.f6310c = cls;
    }

    /* renamed from: b */
    public static <P> d12<P> m7764b(Class<P> cls) {
        return new d12<>(cls);
    }

    /* renamed from: a */
    public final b12<P> m7765a() {
        return this.f6309b;
    }

    /* renamed from: c */
    public final void m7763c(b12<P> b12Var) {
        if (b12Var.m8062b() == zzeoa.c) {
            List<b12<P>> list = this.f6308a.get(new c12(b12Var.m8060d(), null));
            List<b12<P>> list2 = list;
            if (list == null) {
                list2 = Collections.emptyList();
            }
            if (list2.isEmpty()) {
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            this.f6309b = b12Var;
            return;
        }
        throw new IllegalArgumentException("the primary entry has to be ENABLED");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ad  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.b12<P> m7762d(P r9, com.google.android.gms.internal.ads.a82 r10) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.d12.m7762d(java.lang.Object, com.google.android.gms.internal.ads.a82):com.google.android.gms.internal.ads.b12");
    }

    /* renamed from: e */
    public final Class<P> m7761e() {
        return this.f6310c;
    }
}
