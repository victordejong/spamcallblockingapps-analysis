package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdts.class */
public final class zzdts {
    private final Executor zza;
    private final zzcxp zzb;
    private final zzdly zzc;

    public zzdts(Executor executor, zzcxp zzcxpVar, zzdly zzdlyVar) {
        this.zza = executor;
        this.zzc = zzdlyVar;
        this.zzb = zzcxpVar;
    }

    public final void zza(final zzcop zzcopVar) {
        if (zzcopVar == null) {
            return;
        }
        this.zzc.zza(zzcopVar.zzH());
        this.zzc.zzj(new zzaya() { // from class: com.google.android.gms.internal.ads.zzdto
            @Override // com.google.android.gms.internal.ads.zzaya
            public final void zzc(zzaxz zzaxzVar) {
                zzcqc zzP = zzcop.this.zzP();
                Rect rect = zzaxzVar.zzd;
                zzP.zzo(rect.left, rect.top, false);
            }
        }, this.zza);
        this.zzc.zzj(new zzaya() { // from class: com.google.android.gms.internal.ads.zzdtp
            @Override // com.google.android.gms.internal.ads.zzaya
            public final void zzc(zzaxz zzaxzVar) {
                zzcop zzcopVar2 = zzcop.this;
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", true != zzaxzVar.zzj ? "0" : "1");
                zzcopVar2.zzd("onAdVisibilityChanged", hashMap);
            }
        }, this.zza);
        this.zzc.zzj(this.zzb, this.zza);
        this.zzb.zzf(zzcopVar);
        zzcopVar.zzaf("/trackActiveViewUnit", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdtq
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdts.this.zzb((zzcop) obj, map);
            }
        });
        zzcopVar.zzaf("/untrackActiveViewUnit", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdtr
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdts.this.zzc((zzcop) obj, map);
            }
        });
    }

    public final /* synthetic */ void zzb(zzcop zzcopVar, Map map) {
        this.zzb.zzb();
    }

    public final /* synthetic */ void zzc(zzcop zzcopVar, Map map) {
        this.zzb.zza();
    }
}
