package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.e;
import e.m.d.r.g;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzx.class */
public final class zzx {
    private final Map<Class<?>, e<?>> zza;
    private final Map<Class<?>, g<?>> zzb;
    private final e<Object> zzc;

    public zzx(Map<Class<?>, e<?>> map, Map<Class<?>, g<?>> map2, e<Object> eVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = eVar;
    }

    public final void zza(Object obj, OutputStream outputStream) throws IOException {
        new zzu(outputStream, this.zza, this.zzb, this.zzc).zzf(obj);
    }
}
