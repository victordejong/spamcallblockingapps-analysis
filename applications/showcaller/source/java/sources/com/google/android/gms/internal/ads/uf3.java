package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uf3.class */
public final class uf3 {

    /* renamed from: a */
    private static final uf3 f30601a = new uf3();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, cg3<?>> f30603c = new ConcurrentHashMap();

    /* renamed from: b */
    private final eg3 f30602b = new ff3();

    private uf3() {
    }

    /* renamed from: a */
    public static uf3 m10334a() {
        return f30601a;
    }

    /* renamed from: b */
    public final <T> cg3<T> m10333b(Class<T> cls) {
        se3.m11071b(cls, "messageType");
        cg3<?> cg3Var = this.f30603c.get(cls);
        cg3<?> cg3Var2 = cg3Var;
        if (cg3Var == null) {
            cg3Var2 = this.f30602b.mo15254d(cls);
            se3.m11071b(cls, "messageType");
            se3.m11071b(cg3Var2, "schema");
            cg3<T> cg3Var3 = (cg3<T>) this.f30603c.putIfAbsent(cls, cg3Var2);
            if (cg3Var3 != null) {
                return cg3Var3;
            }
        }
        return (cg3<T>) cg3Var2;
    }
}
