package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjm.class */
public class zzdjm {
    private final zzdkn zza;
    private final zzcml zzb;

    public zzdjm(zzdkn zzdknVar, zzcml zzcmlVar) {
        this.zza = zzdknVar;
        this.zzb = zzcmlVar;
    }

    public static final zzdih<zzdhz> zzh(zzdks zzdksVar) {
        return new zzdih<>(zzdksVar, zzchg.zzf);
    }

    public final zzdkn zza() {
        return this.zza;
    }

    public final zzcml zzb() {
        return this.zzb;
    }

    public final View zzc() {
        zzcml zzcmlVar = this.zzb;
        if (zzcmlVar != null) {
            return zzcmlVar.zzG();
        }
        return null;
    }

    public final View zzd() {
        zzcml zzcmlVar = this.zzb;
        if (zzcmlVar == null) {
            return null;
        }
        return zzcmlVar.zzG();
    }

    public Set<zzdih<zzdbc>> zze(zzdac zzdacVar) {
        return Collections.singleton(new zzdih(zzdacVar, zzchg.zzf));
    }

    public Set<zzdih<zzdhz>> zzf(zzdac zzdacVar) {
        return Collections.singleton(new zzdih(zzdacVar, zzchg.zzf));
    }

    public final zzdih<zzdfs> zzg(Executor executor) {
        return new zzdih<>(new zzdfs(this.zzb) { // from class: com.google.android.gms.internal.ads.zzdjl
            private final zzcml zza;

            {
                this.zza = zzcmlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdfs
            public final void zza() {
                zzcml zzcmlVar2 = this.zza;
                if (zzcmlVar2.zzN() != null) {
                    zzcmlVar2.zzN().zzb();
                }
            }
        }, executor);
    }
}
