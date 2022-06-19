package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfhv.class */
public final class zzfhv<O> {
    public final /* synthetic */ zzfhw zza;
    private final Object zzb;
    private final String zzc;
    private final zzfxa<?> zzd;
    private final List<zzfxa<?>> zze;
    private final zzfxa<O> zzf;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfhv(zzfhw zzfhwVar, zzfhw zzfhwVar2, String str, zzfxa zzfxaVar, List<zzfxa> list, zzfxa<O> zzfxaVar2) {
        this.zza = zzfhwVar;
        this.zzb = zzfhwVar2;
        this.zzc = str;
        this.zzd = zzfxaVar;
        this.zze = list;
        this.zzf = zzfxaVar2;
    }

    public final zzfhj zza() {
        zzfhx zzfhxVar;
        Object obj = this.zzb;
        String str = this.zzc;
        String str2 = str;
        if (str == null) {
            str2 = this.zza.zzf(obj);
        }
        final zzfhj zzfhjVar = new zzfhj(obj, str2, this.zzf);
        zzfhxVar = this.zza.zzd;
        zzfhxVar.zza(zzfhjVar);
        zzfxa<?> zzfxaVar = this.zzd;
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhs
            @Override // java.lang.Runnable
            public final void run() {
                zzfhx zzfhxVar2;
                zzfhv zzfhvVar = zzfhv.this;
                zzfhj zzfhjVar2 = zzfhjVar;
                zzfhxVar2 = zzfhvVar.zza.zzd;
                zzfhxVar2.zzc(zzfhjVar2);
            }
        };
        zzfxb zzfxbVar = zzcjm.zzf;
        zzfxaVar.zzc(runnable, zzfxbVar);
        zzfwq.zzr(zzfhjVar, new zzfht(this, zzfhjVar), zzfxbVar);
        return zzfhjVar;
    }

    public final zzfhv<O> zzb(Object obj) {
        return this.zza.zzb(obj, zza());
    }

    public final <T extends Throwable> zzfhv<O> zzc(Class<T> cls, zzfvx<T, O> zzfvxVar) {
        zzfxb zzfxbVar;
        zzfhw zzfhwVar = this.zza;
        Object obj = this.zzb;
        String str = this.zzc;
        zzfxa<?> zzfxaVar = this.zzd;
        List<zzfxa<?>> list = this.zze;
        zzfxa<O> zzfxaVar2 = this.zzf;
        zzfxbVar = zzfhwVar.zzb;
        return new zzfhv<>(zzfhwVar, obj, str, zzfxaVar, list, zzfwq.zzg(zzfxaVar2, cls, zzfvxVar, zzfxbVar));
    }

    public final <O2> zzfhv<O2> zzd(final zzfxa<O2> zzfxaVar) {
        return zzg(new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfhr
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzfxa.this;
            }
        }, zzcjm.zzf);
    }

    public final <O2> zzfhv<O2> zze(final zzfhh<O, O2> zzfhhVar) {
        return zzf(new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfhp
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzfwq.zzi(zzfhh.this.zza(obj));
            }
        });
    }

    public final <O2> zzfhv<O2> zzf(zzfvx<O, O2> zzfvxVar) {
        zzfxb zzfxbVar;
        zzfxbVar = this.zza.zzb;
        return zzg(zzfvxVar, zzfxbVar);
    }

    public final <O2> zzfhv<O2> zzg(zzfvx<O, O2> zzfvxVar, Executor executor) {
        return new zzfhv<>(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzfwq.zzn(this.zzf, zzfvxVar, executor));
    }

    public final zzfhv<O> zzh(String str) {
        return new zzfhv<>(this.zza, this.zzb, str, this.zzd, this.zze, this.zzf);
    }

    public final zzfhv<O> zzi(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzfhw zzfhwVar = this.zza;
        Object obj = this.zzb;
        String str = this.zzc;
        zzfxa<?> zzfxaVar = this.zzd;
        List<zzfxa<?>> list = this.zze;
        zzfxa<O> zzfxaVar2 = this.zzf;
        scheduledExecutorService = zzfhwVar.zzc;
        return new zzfhv<>(zzfhwVar, obj, str, zzfxaVar, list, zzfwq.zzo(zzfxaVar2, j, timeUnit, scheduledExecutorService));
    }
}
