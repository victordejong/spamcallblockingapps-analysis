package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqz.class */
public final class zzdqz {
    private final E zzhpu;
    private final /* synthetic */ zzdqv zzhpy;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdqz(zzdqv zzdqvVar, E e) {
        this.zzhpy = zzdqvVar;
        this.zzhpu = e;
    }

    private final <O> zzdrb<O> zza(Callable<O> callable, zzdzv zzdzvVar) {
        zzdzw zzdzwVar;
        zzdqv zzdqvVar = this.zzhpy;
        E e = this.zzhpu;
        zzdzwVar = zzdqv.zzhps;
        return new zzdrb<>(zzdqvVar, e, zzdzwVar, Collections.emptyList(), zzdzvVar.zze(callable));
    }

    public final zzdrb<?> zza(zzdqt zzdqtVar, zzdzv zzdzvVar) {
        return zza(new Callable(zzdqtVar) { // from class: com.google.android.gms.internal.ads.zzdrc
            private final zzdqt zzhqb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhqb = zzdqtVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.zzhqb.run();
                return null;
            }
        }, zzdzvVar);
    }

    public final <O> zzdrb<O> zzc(Callable<O> callable) {
        zzdzv zzdzvVar;
        zzdzvVar = this.zzhpy.zzghl;
        return zza(callable, zzdzvVar);
    }

    public final <O> zzdrb<O> zze(zzdzw<O> zzdzwVar) {
        zzdzw zzdzwVar2;
        zzdqv zzdqvVar = this.zzhpy;
        E e = this.zzhpu;
        zzdzwVar2 = zzdqv.zzhps;
        return new zzdrb<>(zzdqvVar, e, zzdzwVar2, Collections.emptyList(), zzdzwVar);
    }
}
