package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpw.class */
public final class zzdpw implements zzaya {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzdpx zzb;

    public zzdpw(zzdpx zzdpxVar, String str) {
        this.zzb = zzdpxVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        Map map;
        zzdrw zzdrwVar;
        zzdrw zzdrwVar2;
        zzdrw zzdrwVar3;
        zzdrw zzdrwVar4;
        Map map2;
        zzdrw zzdrwVar5;
        zzdrw zzdrwVar6;
        zzdrw zzdrwVar7;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbl)).booleanValue()) {
            if (!zzaxzVar.zzj) {
                return;
            }
            map = this.zzb.zzx;
            map.put(this.zza, Boolean.TRUE);
            zzdpx zzdpxVar = this.zzb;
            zzdrwVar = zzdpxVar.zzn;
            View zzf = zzdrwVar.zzf();
            zzdrwVar2 = this.zzb.zzn;
            Map<String, WeakReference<View>> zzl = zzdrwVar2.zzl();
            zzdrwVar3 = this.zzb.zzn;
            zzdpxVar.zzv(zzf, zzl, zzdrwVar3.zzm(), true);
            return;
        }
        synchronized (this) {
            if (zzaxzVar.zzj) {
                zzdrwVar4 = this.zzb.zzn;
                if (zzdrwVar4 == null) {
                    return;
                }
                map2 = this.zzb.zzx;
                map2.put(this.zza, Boolean.TRUE);
                zzdpx zzdpxVar2 = this.zzb;
                zzdrwVar5 = zzdpxVar2.zzn;
                View zzf2 = zzdrwVar5.zzf();
                zzdrwVar6 = this.zzb.zzn;
                Map<String, WeakReference<View>> zzl2 = zzdrwVar6.zzl();
                zzdrwVar7 = this.zzb.zzn;
                zzdpxVar2.zzv(zzf2, zzl2, zzdrwVar7.zzm(), true);
            }
        }
    }
}
