package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeaz.class */
public final class zzeaz {
    private final zzfsn zza;
    private final zzeag zzb;
    private final zzgku<zzebq> zzc;

    public zzeaz(zzfsn zzfsnVar, zzeag zzeagVar, zzgku<zzebq> zzgkuVar) {
        this.zza = zzfsnVar;
        this.zzb = zzeagVar;
        this.zzc = zzgkuVar;
    }

    private final <RetT> zzfsm<RetT> zzg(zzcbj zzcbjVar, zzeay<InputStream> zzeayVar, zzeay<InputStream> zzeayVar2, zzfrk<InputStream, RetT> zzfrkVar) {
        String str = zzcbjVar.zzd;
        zzt.zzc();
        return zzfsd.zzg(zzfsd.zzi(zzfru.zzw(zzs.zzF(str) ? zzfsd.zzc(new zzeap(1)) : zzfsd.zzg(zzeayVar.zzb(zzcbjVar), ExecutionException.class, zzeaq.zza, this.zza)), zzfrkVar, this.zza), zzeap.class, new zzfrk(this, zzeayVar2, zzcbjVar, zzfrkVar) { // from class: com.google.android.gms.internal.ads.zzear
            private final zzeaz zza;
            private final zzeay zzb;
            private final zzcbj zzc;
            private final zzfrk zzd;

            {
                this.zza = this;
                this.zzb = zzeayVar2;
                this.zzc = zzcbjVar;
                this.zzd = zzfrkVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzf(this.zzb, this.zzc, this.zzd, (zzeap) obj);
            }
        }, this.zza);
    }

    public final zzfsm<zzcbj> zza(zzcbj zzcbjVar) {
        return zzg(zzcbjVar, zzeat.zza(this.zzb), new zzeay(this) { // from class: com.google.android.gms.internal.ads.zzeau
            private final zzeaz zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzeay
            public final zzfsm zzb(zzcbj zzcbjVar2) {
                return this.zza.zze(zzcbjVar2);
            }
        }, new zzfrk(zzcbjVar) { // from class: com.google.android.gms.internal.ads.zzeas
            private final zzcbj zza;

            {
                this.zza = zzcbjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                zzcbj zzcbjVar2 = this.zza;
                zzcbjVar2.zzj = new String(zzfqo.zza((InputStream) obj), zzfll.zzc);
                return zzfsd.zza(zzcbjVar2);
            }
        });
    }

    public final zzfsm<Void> zzb(zzcbj zzcbjVar) {
        if (zzabu.zze(zzcbjVar.zzj)) {
            return zzfsd.zzc(new zzdym(2, "Pool key missing from removeUrl call."));
        }
        return zzg(zzcbjVar, new zzeay(this) { // from class: com.google.android.gms.internal.ads.zzeaw
            private final zzeaz zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzeay
            public final zzfsm zzb(zzcbj zzcbjVar2) {
                return this.zza.zzd(zzcbjVar2);
            }
        }, new zzeay(this) { // from class: com.google.android.gms.internal.ads.zzeax
            private final zzeaz zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzeay
            public final zzfsm zzb(zzcbj zzcbjVar2) {
                return this.zza.zzc(zzcbjVar2);
            }
        }, zzeav.zza);
    }

    public final /* synthetic */ zzfsm zzc(zzcbj zzcbjVar) {
        return this.zzc.zzb().zzd(zzbld.zzd.zze().booleanValue() ? zzcbjVar.zzh : zzcbjVar.zzj);
    }

    public final /* synthetic */ zzfsm zzd(zzcbj zzcbjVar) {
        return this.zzb.zzc(zzbld.zzd.zze().booleanValue() ? zzcbjVar.zzh : zzcbjVar.zzj);
    }

    public final /* synthetic */ zzfsm zze(zzcbj zzcbjVar) {
        return this.zzc.zzb().zzc(zzcbjVar, Binder.getCallingUid());
    }

    public final /* synthetic */ zzfsm zzf(zzeay zzeayVar, zzcbj zzcbjVar, zzfrk zzfrkVar, zzeap zzeapVar) throws Exception {
        return zzfsd.zzi(zzeayVar.zzb(zzcbjVar), zzfrkVar, this.zza);
    }
}
