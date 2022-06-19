package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/der.class */
public final class der {

    /* renamed from: a */
    private static final der f14165a = new der();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, dfd<?>> f14167c = new ConcurrentHashMap();

    /* renamed from: b */
    private final dfc f14166b = new ddt();

    private der() {
    }

    /* renamed from: a */
    public static der m9928a() {
        return f14165a;
    }

    /* renamed from: a */
    public final <T> dfd<T> m9927a(Class<T> cls) {
        dcz.m10045a(cls, "messageType");
        dfd<?> dfdVar = this.f14167c.get(cls);
        dfd<?> dfdVar2 = dfdVar;
        if (dfdVar == null) {
            dfdVar2 = this.f14166b.mo9847a(cls);
            dcz.m10045a(cls, "messageType");
            dcz.m10045a(dfdVar2, "schema");
            dfd<?> putIfAbsent = this.f14167c.putIfAbsent(cls, dfdVar2);
            if (putIfAbsent != null) {
                dfdVar2 = putIfAbsent;
            }
        }
        return (dfd<T>) dfdVar2;
    }

    /* renamed from: a */
    public final <T> dfd<T> m9926a(T t) {
        return m9927a((Class) t.getClass());
    }
}
