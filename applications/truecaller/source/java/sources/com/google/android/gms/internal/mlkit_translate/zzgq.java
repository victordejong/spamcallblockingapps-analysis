package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.google.android.gms.internal.mlkit_translate.zzgs;
import e.m.d.m.o;
import e.m.d.m.x;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgq.class */
public final class zzgq implements zzgs.zza {
    public static final o<?> zza;
    private final zzgo zzb;

    static {
        o.b a = o.a(zzgs.zza.class);
        a.a(new x(zzgo.class, 1, 0));
        a.c(zzgp.zza);
        zza = a.b();
    }

    public zzgq(zzgo zzgoVar) {
        this.zzb = zzgoVar;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzgs.zza
    public final void zza(zzbj.zzad zzadVar) {
        this.zzb.zza((zzbj.zzad) ((zzkc) zzbj.zzad.zza(zzadVar).zza(zzbj.zzbh.zza(zzadVar.zza()).zza(true)).zzh()));
    }
}
