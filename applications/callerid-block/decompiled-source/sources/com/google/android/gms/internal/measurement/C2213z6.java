package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.measurement.z6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z6.class */
final class C2213z6 {

    /* renamed from: c */
    private static final C2213z6 f9857c = new C2213z6();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, AbstractC2099c7<?>> f9859b = new ConcurrentHashMap();

    /* renamed from: a */
    private final AbstractC2104d7 f9858a = new j6();

    private C2213z6() {
    }

    /* renamed from: a */
    public static C2213z6 m4075a() {
        return f9857c;
    }

    /* renamed from: b */
    public final <T> AbstractC2099c7<T> m4074b(Class<T> cls) {
        C2202x5.m4134b(cls, "messageType");
        AbstractC2099c7<?> c7Var = this.f9859b.get(cls);
        AbstractC2099c7<T> c7Var2 = (AbstractC2099c7<T>) c7Var;
        if (c7Var == null) {
            c7Var2 = this.f9858a.m4406d(cls);
            C2202x5.m4134b(cls, "messageType");
            C2202x5.m4134b(c7Var2, "schema");
            AbstractC2099c7<T> c7Var3 = (AbstractC2099c7<T>) this.f9859b.putIfAbsent(cls, c7Var2);
            if (c7Var3 != null) {
                return c7Var3;
            }
        }
        return c7Var2;
    }
}
