package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfej.class */
public final class zzfej<O> {
    public final /* synthetic */ zzfek zza;
    private final Object zzb;
    private final String zzc;
    private final zzfsm<?> zzd;
    private final List<zzfsm<?>> zze;
    private final zzfsm<O> zzf;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfej(zzfek zzfekVar, zzfek zzfekVar2, String str, zzfsm zzfsmVar, List<zzfsm> list, zzfsm<O> zzfsmVar2) {
        this.zza = zzfekVar;
        this.zzb = zzfekVar2;
        this.zzc = str;
        this.zzd = zzfsmVar;
        this.zze = list;
        this.zzf = zzfsmVar2;
    }

    public final zzfej<O> zza(String str) {
        return new zzfej<>(this.zza, this.zzb, str, this.zzd, this.zze, this.zzf);
    }

    public final <O2> zzfej<O2> zzb(zzfdw<O, O2> zzfdwVar) {
        return zzc(new zzfrk(zzfdwVar) { // from class: com.google.android.gms.internal.ads.zzfee
            private final zzfdw zza;

            {
                this.zza = zzfdwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return zzfsd.zza(this.zza.zza(obj));
            }
        });
    }

    public final <O2> zzfej<O2> zzc(zzfrk<O, O2> zzfrkVar) {
        zzfsn zzfsnVar;
        zzfsnVar = this.zza.zzb;
        return zzd(zzfrkVar, zzfsnVar);
    }

    public final <O2> zzfej<O2> zzd(zzfrk<O, O2> zzfrkVar, Executor executor) {
        return new zzfej<>(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzfsd.zzi(this.zzf, zzfrkVar, executor));
    }

    public final <O2> zzfej<O2> zze(zzfsm<O2> zzfsmVar) {
        return zzd(new zzfrk(zzfsmVar) { // from class: com.google.android.gms.internal.ads.zzfef
            private final zzfsm zza;

            {
                this.zza = zzfsmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza;
            }
        }, zzchg.zzf);
    }

    public final <T extends Throwable> zzfej<O> zzf(Class<T> cls, zzfdw<T, O> zzfdwVar) {
        return zzg(cls, new zzfrk(zzfdwVar) { // from class: com.google.android.gms.internal.ads.zzfeg
            private final zzfdw zza;

            {
                this.zza = zzfdwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                Exception exc = (Exception) ((Throwable) obj);
                return zzfsd.zza("");
            }
        });
    }

    public final <T extends Throwable> zzfej<O> zzg(Class<T> cls, zzfrk<T, O> zzfrkVar) {
        zzfsn zzfsnVar;
        zzfek zzfekVar = this.zza;
        Object obj = this.zzb;
        String str = this.zzc;
        zzfsm<?> zzfsmVar = this.zzd;
        List<zzfsm<?>> list = this.zze;
        zzfsm<O> zzfsmVar2 = this.zzf;
        zzfsnVar = zzfekVar.zzb;
        return new zzfej<>(zzfekVar, obj, str, zzfsmVar, list, zzfsd.zzg(zzfsmVar2, cls, zzfrkVar, zzfsnVar));
    }

    public final zzfej<O> zzh(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzfek zzfekVar = this.zza;
        Object obj = this.zzb;
        String str = this.zzc;
        zzfsm<?> zzfsmVar = this.zzd;
        List<zzfsm<?>> list = this.zze;
        zzfsm<O> zzfsmVar2 = this.zzf;
        scheduledExecutorService = zzfekVar.zzc;
        return new zzfej<>(zzfekVar, obj, str, zzfsmVar, list, zzfsd.zzh(zzfsmVar2, j, timeUnit, scheduledExecutorService));
    }

    public final zzfdy zzi() {
        zzfel zzfelVar;
        Object obj = this.zzb;
        String str = this.zzc;
        String str2 = str;
        if (str == null) {
            str2 = this.zza.zzg(obj);
        }
        zzfdy zzfdyVar = new zzfdy(obj, str2, this.zzf);
        zzfelVar = this.zza.zzd;
        zzfelVar.zza(zzfdyVar);
        zzfsm<?> zzfsmVar = this.zzd;
        Runnable runnable = new Runnable(this, zzfdyVar) { // from class: com.google.android.gms.internal.ads.zzfeh
            private final zzfej zza;
            private final zzfdy zzb;

            {
                this.zza = this;
                this.zzb = zzfdyVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzfel zzfelVar2;
                zzfej zzfejVar = this.zza;
                zzfdy zzfdyVar2 = this.zzb;
                zzfelVar2 = zzfejVar.zza.zzd;
                zzfelVar2.zzb(zzfdyVar2);
            }
        };
        zzfsn zzfsnVar = zzchg.zzf;
        zzfsmVar.zze(runnable, zzfsnVar);
        zzfsd.zzp(zzfdyVar, new zzfei(this, zzfdyVar), zzfsnVar);
        return zzfdyVar;
    }

    public final zzfej<O> zzj(Object obj) {
        return this.zza.zze(obj, zzi());
    }
}
