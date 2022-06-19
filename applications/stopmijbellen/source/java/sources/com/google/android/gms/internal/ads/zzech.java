package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.zzt;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzech.class */
public final class zzech {
    private final zzfxb zza;
    private final zzfxb zzb;
    private final zzedp zzc;
    private final zzgpl<zzefh> zzd;

    public zzech(zzfxb zzfxbVar, zzfxb zzfxbVar2, zzedp zzedpVar, zzgpl<zzefh> zzgplVar) {
        this.zza = zzfxbVar;
        this.zzb = zzfxbVar2;
        this.zzc = zzedpVar;
        this.zzd = zzgplVar;
    }

    public final /* synthetic */ zzfxa zza(zzcdq zzcdqVar, int i, zzeeg zzeegVar) throws Exception {
        return this.zzd.zzb().zzc(zzcdqVar, i);
    }

    public final zzfxa<InputStream> zzb(final zzcdq zzcdqVar) {
        String str = zzcdqVar.zzd;
        zzt.zzp();
        zzfxa zzh = com.google.android.gms.ads.internal.util.zzt.zzG(str) ? zzfwq.zzh(new zzeeg(1)) : zzfwq.zzg(this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzecg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzech.this.zzc(zzcdqVar);
            }
        }), ExecutionException.class, zzecf.zza, this.zzb);
        final int callingUid = Binder.getCallingUid();
        return zzfwq.zzg(zzh, zzeeg.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzece
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzech.this.zza(zzcdqVar, callingUid, (zzeeg) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ InputStream zzc(zzcdq zzcdqVar) throws Exception {
        zzcjr<InputStream> zzcjrVar;
        final zzedp zzedpVar = this.zzc;
        synchronized (zzedpVar.zzb) {
            if (zzedpVar.zzc) {
                zzcjrVar = zzedpVar.zza;
            } else {
                zzedpVar.zzc = true;
                zzedpVar.zze = zzcdqVar;
                zzedpVar.zzf.checkAvailabilityAndConnect();
                zzedpVar.zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzedp.this.zza();
                    }
                }, zzcjm.zzf);
                zzcjrVar = zzedpVar.zza;
            }
        }
        return (InputStream) zzcjrVar.get(((Integer) zzbgq.zzc().zzb(zzblj.zzdW)).intValue(), TimeUnit.SECONDS);
    }
}
