package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.measurement.hx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hx.class */
public final class C13565hx {

    /* renamed from: a */
    private static final C13565hx f50814a = new C13565hx();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, AbstractC13569ia<?>> f50816c = new ConcurrentHashMap();

    /* renamed from: b */
    private final AbstractC13570ib f50815b = new C13549hh();

    private C13565hx() {
    }

    /* renamed from: a */
    public static C13565hx m12665a() {
        return f50814a;
    }

    /* renamed from: a */
    public final <T> AbstractC13569ia<T> m12664a(Class<T> cls) {
        C13534gt.m12744a(cls, "messageType");
        AbstractC13569ia<?> abstractC13569ia = this.f50816c.get(cls);
        AbstractC13569ia<?> abstractC13569ia2 = abstractC13569ia;
        if (abstractC13569ia == null) {
            abstractC13569ia2 = this.f50815b.mo12647a(cls);
            C13534gt.m12744a(cls, "messageType");
            C13534gt.m12744a(abstractC13569ia2, "schema");
            AbstractC13569ia<T> abstractC13569ia3 = (AbstractC13569ia<T>) this.f50816c.putIfAbsent(cls, abstractC13569ia2);
            if (abstractC13569ia3 != null) {
                return abstractC13569ia3;
            }
        }
        return (AbstractC13569ia<T>) abstractC13569ia2;
    }
}
