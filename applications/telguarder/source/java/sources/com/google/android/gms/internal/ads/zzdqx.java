package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqx.class */
public final class zzdqx {
    private final E zzhpu;
    private final List<zzdzw<?>> zzhpx;
    private final /* synthetic */ zzdqv zzhpy;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdqx(zzdqv zzdqvVar, E e, List<zzdzw<?>> list) {
        this.zzhpy = zzdqvVar;
        this.zzhpu = e;
        this.zzhpx = list;
    }

    public final <O> zzdrb<O> zzb(Callable<O> callable) {
        zzdzv zzdzvVar;
        zzdzp zzk = zzdzk.zzk(this.zzhpx);
        zzdzw zzb = zzk.zzb(zzdra.zzhca, zzazp.zzeih);
        zzdqv zzdqvVar = this.zzhpy;
        E e = this.zzhpu;
        List<zzdzw<?>> list = this.zzhpx;
        zzdzvVar = zzdqvVar.zzghl;
        return new zzdrb<>(zzdqvVar, e, zzb, list, zzk.zzb(callable, zzdzvVar));
    }
}
