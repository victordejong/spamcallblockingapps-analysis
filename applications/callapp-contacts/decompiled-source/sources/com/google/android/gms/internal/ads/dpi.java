package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpi.class */
public final class dpi {

    /* renamed from: a  reason: collision with root package name */
    private static final dpi f27059a = new dpi();

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, dpp<?>> f27061c = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final dps f27060b = new dog();

    private dpi() {
    }

    public static dpi a() {
        return f27059a;
    }

    public final <T> dpp<T> a(Class<T> cls) {
        dnj.a(cls, "messageType");
        dpp<?> dppVar = this.f27061c.get(cls);
        dpp<T> dppVar2 = (dpp<T>) dppVar;
        if (dppVar == null) {
            dppVar2 = this.f27060b.a(cls);
            dnj.a(cls, "messageType");
            dnj.a(dppVar2, "schema");
            dpp<?> putIfAbsent = this.f27061c.putIfAbsent(cls, dppVar2);
            if (putIfAbsent != null) {
                dppVar2 = (dpp<T>) putIfAbsent;
            }
        }
        return dppVar2;
    }

    public final <T> dpp<T> a(T t) {
        return a((Class) t.getClass());
    }
}
