package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb.class */
public final class zzdrb<O> {
    private final E zzhpu;
    private final String zzhpv;
    private final List<zzdzw<?>> zzhpx;
    final /* synthetic */ zzdqv zzhpy;
    private final zzdzw<?> zzhpz;
    private final zzdzw<O> zzhqa;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdrb(zzdqv zzdqvVar, E e, String str, zzdzw<?> zzdzwVar, List<zzdzw<?>> list, zzdzw<O> zzdzwVar2) {
        this.zzhpy = zzdqvVar;
        this.zzhpu = e;
        this.zzhpv = str;
        this.zzhpz = zzdzwVar;
        this.zzhpx = list;
        this.zzhqa = zzdzwVar2;
    }

    private final <O2> zzdrb<O2> zza(zzdyu<O, O2> zzdyuVar, Executor executor) {
        return new zzdrb<>(this.zzhpy, this.zzhpu, this.zzhpv, this.zzhpz, this.zzhpx, zzdzk.zzb(this.zzhqa, zzdyuVar, executor));
    }

    public final zzdrb<O> zza(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzdqv zzdqvVar = this.zzhpy;
        E e = this.zzhpu;
        String str = this.zzhpv;
        zzdzw<?> zzdzwVar = this.zzhpz;
        List<zzdzw<?>> list = this.zzhpx;
        zzdzw<O> zzdzwVar2 = this.zzhqa;
        scheduledExecutorService = zzdqvVar.zzfth;
        return new zzdrb<>(zzdqvVar, e, str, zzdzwVar, list, zzdzk.zza(zzdzwVar2, j, timeUnit, scheduledExecutorService));
    }

    public final <O2> zzdrb<O2> zza(zzdyu<O, O2> zzdyuVar) {
        zzdzv zzdzvVar;
        zzdzvVar = this.zzhpy.zzghl;
        return zza(zzdyuVar, zzdzvVar);
    }

    public final <T extends Throwable> zzdrb<O> zza(Class<T> cls, zzdqu<T, O> zzdquVar) {
        return zza(cls, new zzdyu(zzdquVar) { // from class: com.google.android.gms.internal.ads.zzdrg
            private final zzdqu zzhqc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhqc = zzdquVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return zzdzk.zzag(this.zzhqc.apply((Throwable) obj));
            }
        });
    }

    public final <T extends Throwable> zzdrb<O> zza(Class<T> cls, zzdyu<T, O> zzdyuVar) {
        zzdzv zzdzvVar;
        zzdqv zzdqvVar = this.zzhpy;
        E e = this.zzhpu;
        String str = this.zzhpv;
        zzdzw<?> zzdzwVar = this.zzhpz;
        List<zzdzw<?>> list = this.zzhpx;
        zzdzw<O> zzdzwVar2 = this.zzhqa;
        zzdzvVar = zzdqvVar.zzghl;
        return new zzdrb<>(zzdqvVar, e, str, zzdzwVar, list, zzdzk.zzb(zzdzwVar2, cls, zzdyuVar, zzdzvVar));
    }

    public final zzdqw<E, O> zzaxj() {
        zzdrh zzdrhVar;
        E e = this.zzhpu;
        String str = this.zzhpv;
        String str2 = str;
        if (str == null) {
            str2 = this.zzhpy.zzu(e);
        }
        zzdqw<E, O> zzdqwVar = new zzdqw<>(e, str2, this.zzhqa);
        zzdrhVar = this.zzhpy.zzhpt;
        zzdrhVar.zza(zzdqwVar);
        this.zzhpz.addListener(new Runnable(this, zzdqwVar) { // from class: com.google.android.gms.internal.ads.zzdrf
            private final zzdrb zzhqd;
            private final zzdqw zzhqe;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhqd = this;
                this.zzhqe = zzdqwVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzdrh zzdrhVar2;
                zzdrb zzdrbVar = this.zzhqd;
                zzdqw zzdqwVar2 = this.zzhqe;
                zzdrhVar2 = zzdrbVar.zzhpy.zzhpt;
                zzdrhVar2.zzb(zzdqwVar2);
            }
        }, zzazp.zzeih);
        zzdzk.zza(zzdqwVar, new zzdri(this, zzdqwVar), zzazp.zzeih);
        return zzdqwVar;
    }

    public final <O2> zzdrb<O2> zzb(zzdqu<O, O2> zzdquVar) {
        return zza(new zzdyu(zzdquVar) { // from class: com.google.android.gms.internal.ads.zzdre
            private final zzdqu zzhqc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhqc = zzdquVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return zzdzk.zzag(this.zzhqc.apply(obj));
            }
        });
    }

    public final <O2> zzdrb<O2> zze(zzdzw<O2> zzdzwVar) {
        return zza(new zzdyu(zzdzwVar) { // from class: com.google.android.gms.internal.ads.zzdrd
            private final zzdzw zzgig;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgig = zzdzwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgig;
            }
        }, zzazp.zzeih);
    }

    public final zzdrb<O> zzgu(String str) {
        return new zzdrb<>(this.zzhpy, this.zzhpu, str, this.zzhpz, this.zzhpx, this.zzhqa);
    }

    public final zzdrb<O> zzv(E e) {
        return this.zzhpy.zza((zzdqv) e, zzaxj());
    }
}
