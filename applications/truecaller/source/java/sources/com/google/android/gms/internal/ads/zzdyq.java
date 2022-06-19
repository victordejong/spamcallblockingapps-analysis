package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyq.class */
public final class zzdyq {
    private final zzfsn zza;
    private final zzfsn zzb;
    private final zzdzy zzc;
    private final zzgku<zzebq> zzd;

    public zzdyq(zzfsn zzfsnVar, zzfsn zzfsnVar2, zzdzy zzdzyVar, zzgku<zzebq> zzgkuVar) {
        this.zza = zzfsnVar;
        this.zzb = zzfsnVar2;
        this.zzc = zzdzyVar;
        this.zzd = zzgkuVar;
    }

    public final zzfsm<InputStream> zza(zzcbj zzcbjVar) {
        String str = zzcbjVar.zzd;
        zzt.zzc();
        return zzfsd.zzg(zzs.zzF(str) ? zzfsd.zzc(new zzeap(1)) : zzfsd.zzg(this.zza.zzb(new Callable(this, zzcbjVar) { // from class: com.google.android.gms.internal.ads.zzdyn
            private final zzdyq zza;
            private final zzcbj zzb;

            {
                this.zza = this;
                this.zzb = zzcbjVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc(this.zzb);
            }
        }), ExecutionException.class, zzdyo.zza, this.zzb), zzeap.class, new zzfrk(this, zzcbjVar, Binder.getCallingUid()) { // from class: com.google.android.gms.internal.ads.zzdyp
            private final zzdyq zza;
            private final zzcbj zzb;
            private final int zzc;

            {
                this.zza = this;
                this.zzb = zzcbjVar;
                this.zzc = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzb(this.zzb, this.zzc, (zzeap) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzfsm zzb(zzcbj zzcbjVar, int i, zzeap zzeapVar) throws Exception {
        return this.zzd.zzb().zzb(zzcbjVar, i);
    }

    public final /* synthetic */ InputStream zzc(zzcbj zzcbjVar) throws Exception {
        zzchl<InputStream> zzchlVar;
        zzdzy zzdzyVar = this.zzc;
        synchronized (zzdzyVar.zzb) {
            if (zzdzyVar.zzc) {
                zzchlVar = zzdzyVar.zza;
            } else {
                zzdzyVar.zzc = true;
                zzdzyVar.zze = zzcbjVar;
                zzdzyVar.zzf.checkAvailabilityAndConnect();
                zzdzyVar.zza.zze(new Runnable(zzdzyVar) { // from class: com.google.android.gms.internal.ads.zzdzx
                    private final zzdzy zza;

                    {
                        this.zza = zzdzyVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zza();
                    }
                }, zzchg.zzf);
                zzchlVar = zzdzyVar.zza;
            }
        }
        return (InputStream) zzchlVar.get(((Integer) zzbet.zzc().zzc(zzbjl.zzdP)).intValue(), TimeUnit.SECONDS);
    }
}
