package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdna.class */
public class zzdna {
    private final zzdob zza;
    private final zzcop zzb;

    public zzdna(zzdob zzdobVar, zzcop zzcopVar) {
        this.zza = zzdobVar;
        this.zzb = zzcopVar;
    }

    public static final zzdlw<zzdlo> zzh(zzdog zzdogVar) {
        return new zzdlw<>(zzdogVar, zzcjm.zzf);
    }

    public final View zza() {
        zzcop zzcopVar = this.zzb;
        if (zzcopVar == null) {
            return null;
        }
        return zzcopVar.zzI();
    }

    public final View zzb() {
        zzcop zzcopVar = this.zzb;
        if (zzcopVar != null) {
            return zzcopVar.zzI();
        }
        return null;
    }

    public final zzcop zzc() {
        return this.zzb;
    }

    public final zzdlw<zzdjh> zzd(Executor executor) {
        final zzcop zzcopVar = this.zzb;
        return new zzdlw<>(new zzdjh() { // from class: com.google.android.gms.internal.ads.zzdmz
            @Override // com.google.android.gms.internal.ads.zzdjh
            public final void zza() {
                zzcop zzcopVar2 = zzcop.this;
                if (zzcopVar2.zzN() != null) {
                    zzcopVar2.zzN().zzb();
                }
            }
        }, executor);
    }

    public final zzdob zze() {
        return this.zza;
    }

    public Set<zzdlw<zzder>> zzf(zzddr zzddrVar) {
        return Collections.singleton(new zzdlw(zzddrVar, zzcjm.zzf));
    }

    public Set<zzdlw<zzdlo>> zzg(zzddr zzddrVar) {
        return Collections.singleton(new zzdlw(zzddrVar, zzcjm.zzf));
    }
}
