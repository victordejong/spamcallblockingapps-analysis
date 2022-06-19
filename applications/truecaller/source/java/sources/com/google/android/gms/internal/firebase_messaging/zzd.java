package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.i.a;
import e.m.d.r.i.b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzd.class */
public final class zzd implements a {
    public static final a zza = new zzd();

    private zzd() {
    }

    public final void configure(b<?> bVar) {
        bVar.registerEncoder(zze.class, zzc.zza);
        bVar.registerEncoder(e.m.d.y.e1.b.class, zzb.zza);
        bVar.registerEncoder(e.m.d.y.e1.a.class, zza.zza);
    }
}
