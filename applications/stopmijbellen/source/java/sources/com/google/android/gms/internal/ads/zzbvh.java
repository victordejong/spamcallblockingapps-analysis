package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvh.class */
public final class zzbvh implements Runnable {
    public final /* synthetic */ zzbvs zza;
    public final /* synthetic */ zzbuo zzb;
    public final /* synthetic */ zzbvt zzc;

    public zzbvh(zzbvt zzbvtVar, zzbvs zzbvsVar, zzbuo zzbuoVar) {
        this.zzc = zzbvtVar;
        this.zza = zzbvsVar;
        this.zzb = zzbuoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzc.zza;
        synchronized (obj) {
            if (this.zza.zze() != -1 && this.zza.zze() != 1) {
                this.zza.zzg();
                zzfxb zzfxbVar = zzcjm.zze;
                final zzbuo zzbuoVar = this.zzb;
                zzfxbVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvg
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbuo.this.zzc();
                    }
                });
                zze.zza("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
