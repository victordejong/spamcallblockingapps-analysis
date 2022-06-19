package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpi.class */
public final class dpi {

    /* renamed from: a */
    private static final dpi f47360a = new dpi();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, dpp<?>> f47362c = new ConcurrentHashMap();

    /* renamed from: b */
    private final dps f47361b = new dog();

    private dpi() {
    }

    /* renamed from: a */
    public static dpi m16196a() {
        return f47360a;
    }

    /* renamed from: a */
    public final <T> dpp<T> m16195a(Class<T> cls) {
        dnj.m16314a(cls, "messageType");
        dpp<?> dppVar = this.f47362c.get(cls);
        dpp<?> dppVar2 = dppVar;
        if (dppVar == null) {
            dppVar2 = this.f47361b.mo16054a(cls);
            dnj.m16314a(cls, "messageType");
            dnj.m16314a(dppVar2, "schema");
            dpp<?> putIfAbsent = this.f47362c.putIfAbsent(cls, dppVar2);
            if (putIfAbsent != null) {
                dppVar2 = putIfAbsent;
            }
        }
        return (dpp<T>) dppVar2;
    }

    /* renamed from: a */
    public final <T> dpp<T> m16194a(T t) {
        return m16195a((Class) t.getClass());
    }
}
