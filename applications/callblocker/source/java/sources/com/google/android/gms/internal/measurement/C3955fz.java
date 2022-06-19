package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.measurement.fz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fz.class */
public final class C3955fz {

    /* renamed from: a */
    private static final C3955fz f18188a = new C3955fz();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, AbstractC3960gd<?>> f18190c = new ConcurrentHashMap();

    /* renamed from: b */
    private final AbstractC3963gg f18189b = new C3930fa();

    private C3955fz() {
    }

    /* renamed from: a */
    public static C3955fz m5481a() {
        return f18188a;
    }

    /* renamed from: a */
    public final <T> AbstractC3960gd<T> m5480a(Class<T> cls) {
        C3908ef.m5610a(cls, "messageType");
        AbstractC3960gd<?> abstractC3960gd = this.f18190c.get(cls);
        AbstractC3960gd<?> abstractC3960gd2 = abstractC3960gd;
        if (abstractC3960gd == null) {
            abstractC3960gd2 = this.f18189b.mo5364a(cls);
            C3908ef.m5610a(cls, "messageType");
            C3908ef.m5610a(abstractC3960gd2, "schema");
            AbstractC3960gd<?> putIfAbsent = this.f18190c.putIfAbsent(cls, abstractC3960gd2);
            if (putIfAbsent != null) {
                abstractC3960gd2 = putIfAbsent;
            }
        }
        return (AbstractC3960gd<T>) abstractC3960gd2;
    }

    /* renamed from: a */
    public final <T> AbstractC3960gd<T> m5479a(T t) {
        return m5480a((Class) t.getClass());
    }
}
