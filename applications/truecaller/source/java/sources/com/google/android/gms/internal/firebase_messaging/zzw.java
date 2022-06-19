package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.e;
import e.m.d.r.g;
import e.m.d.r.i.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzw.class */
public final class zzw implements b<zzw> {
    public static final /* synthetic */ int zza = 0;
    private static final e<Object> zzb = zzv.zza;
    private final Map<Class<?>, e<?>> zzc = new HashMap();
    private final Map<Class<?>, g<?>> zzd = new HashMap();
    private final e<Object> zze = zzb;

    public final /* bridge */ /* synthetic */ b registerEncoder(Class cls, e eVar) {
        this.zzc.put(cls, eVar);
        this.zzd.remove(cls);
        return this;
    }

    public final /* bridge */ /* synthetic */ b registerEncoder(Class cls, g gVar) {
        this.zzd.put(cls, gVar);
        this.zzc.remove(cls);
        return this;
    }

    public final zzx zza() {
        return new zzx(new HashMap(this.zzc), new HashMap(this.zzd), this.zze);
    }
}
