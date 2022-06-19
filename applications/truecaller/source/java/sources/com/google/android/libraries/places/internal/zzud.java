package com.google.android.libraries.places.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzud.class */
public final class zzud {
    private static final zzud zza = new zzud();
    private final ConcurrentMap<Class<?>, zzue<?>> zzc = new ConcurrentHashMap();
    private final zzuh zzb = new zztf();

    private zzud() {
    }

    public static zzud zza() {
        return zza;
    }

    public final <T> zzue<T> zza(Class<T> cls) {
        zzsg.zza(cls, "messageType");
        zzue<?> zzueVar = this.zzc.get(cls);
        zzue<?> zzueVar2 = zzueVar;
        if (zzueVar == null) {
            zzueVar2 = this.zzb.zza(cls);
            zzsg.zza(cls, "messageType");
            zzsg.zza(zzueVar2, "schema");
            zzue<?> putIfAbsent = this.zzc.putIfAbsent(cls, zzueVar2);
            if (putIfAbsent != null) {
                zzueVar2 = putIfAbsent;
            }
        }
        return (zzue<T>) zzueVar2;
    }

    public final <T> zzue<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
