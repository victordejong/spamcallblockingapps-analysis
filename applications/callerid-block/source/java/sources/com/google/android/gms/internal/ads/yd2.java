package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yd2.class */
final class yd2 {

    /* renamed from: c */
    private static final yd2 f9216c = new yd2();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, he2<?>> f9218b = new ConcurrentHashMap();

    /* renamed from: a */
    private final ie2 f9217a = new jd2();

    private yd2() {
    }

    /* renamed from: a */
    public static yd2 m4761a() {
        return f9216c;
    }

    /* renamed from: b */
    public final <T> he2<T> m4760b(Class<T> cls) {
        xc2.m4917b(cls, "messageType");
        he2<?> he2Var = this.f9218b.get(cls);
        he2<?> he2Var2 = he2Var;
        if (he2Var == null) {
            he2Var2 = this.f9217a.m7189d(cls);
            xc2.m4917b(cls, "messageType");
            xc2.m4917b(he2Var2, "schema");
            he2<T> he2Var3 = (he2<T>) this.f9218b.putIfAbsent(cls, he2Var2);
            if (he2Var3 != null) {
                return he2Var3;
            }
        }
        return (he2<T>) he2Var2;
    }
}
