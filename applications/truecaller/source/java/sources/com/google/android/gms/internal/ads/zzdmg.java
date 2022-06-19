package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmg.class */
public final class zzdmg implements zzawd {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzdmh zzb;

    public zzdmg(zzdmh zzdmhVar, String str) {
        this.zzb = zzdmhVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        Map map;
        zzdog zzdogVar;
        zzdog zzdogVar2;
        zzdog zzdogVar3;
        zzdog zzdogVar4;
        Map map2;
        zzdog zzdogVar5;
        zzdog zzdogVar6;
        zzdog zzdogVar7;
        Boolean bool = Boolean.TRUE;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbf)).booleanValue()) {
            if (!zzawcVar.zzj) {
                return;
            }
            map = this.zzb.zzx;
            map.put(this.zza, bool);
            zzdmh zzdmhVar = this.zzb;
            zzdogVar = zzdmhVar.zzn;
            View zzbx = zzdogVar.zzbx();
            zzdogVar2 = this.zzb.zzn;
            Map<String, WeakReference<View>> zzj = zzdogVar2.zzj();
            zzdogVar3 = this.zzb.zzn;
            zzdmhVar.zzr(zzbx, zzj, zzdogVar3.zzk(), true);
            return;
        }
        synchronized (this) {
            if (zzawcVar.zzj) {
                zzdogVar4 = this.zzb.zzn;
                if (zzdogVar4 == null) {
                    return;
                }
                map2 = this.zzb.zzx;
                map2.put(this.zza, bool);
                zzdmh zzdmhVar2 = this.zzb;
                zzdogVar5 = zzdmhVar2.zzn;
                View zzbx2 = zzdogVar5.zzbx();
                zzdogVar6 = this.zzb.zzn;
                Map<String, WeakReference<View>> zzj2 = zzdogVar6.zzj();
                zzdogVar7 = this.zzb.zzn;
                zzdmhVar2.zzr(zzbx2, zzj2, zzdogVar7.zzk(), true);
            }
        }
    }
}
