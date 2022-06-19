package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzav;
import com.google.android.gms.internal.mlkit_common.zzds;
import e.m.d.m.o;
import e.m.d.m.x;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdq.class */
public final class zzdq implements zzds.zza {
    public static final o<?> zza;
    private final zzdo zzb;

    static {
        o.b a = o.a(zzds.zza.class);
        a.a(new x(zzdo.class, 1, 0));
        a.c(zzdp.zza);
        zza = a.b();
    }

    public zzdq(zzdo zzdoVar) {
        this.zzb = zzdoVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzds.zza
    public final void zza(zzav.zzad zzadVar) {
        this.zzb.zza((zzav.zzad) ((zzfq) zzav.zzad.zza(zzadVar).zza(zzav.zzbh.zza(zzadVar.zza()).zza(true)).zzg()));
    }
}
