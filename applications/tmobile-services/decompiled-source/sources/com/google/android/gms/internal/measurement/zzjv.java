package com.google.android.gms.internal.measurement;

import com.google.firebase.messaging.Constants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjv.class */
public final class zzjv {

    /* renamed from: c */
    private static final zzjv f8583c = new zzjv();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, zzjz<?>> f8585b = new ConcurrentHashMap();

    /* renamed from: a */
    private final zzkc f8584a = new zziy();

    private zzjv() {
    }

    /* renamed from: a */
    public static zzjv m12271a() {
        return f8583c;
    }

    /* renamed from: b */
    public final <T> zzjz<T> m12270b(Class<T> cls) {
        zzic.m12392f(cls, Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
        zzjz<?> zzjzVar = this.f8585b.get(cls);
        zzjz<T> zzjzVar2 = (zzjz<T>) zzjzVar;
        if (zzjzVar == null) {
            zzjzVar2 = this.f8584a.mo12158a(cls);
            zzic.m12392f(cls, Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
            zzic.m12392f(zzjzVar2, "schema");
            zzjz<?> putIfAbsent = this.f8585b.putIfAbsent(cls, zzjzVar2);
            if (putIfAbsent != null) {
                zzjzVar2 = (zzjz<T>) putIfAbsent;
            }
        }
        return zzjzVar2;
    }

    /* renamed from: c */
    public final <T> zzjz<T> m12269c(T t) {
        return m12270b(t.getClass());
    }
}
