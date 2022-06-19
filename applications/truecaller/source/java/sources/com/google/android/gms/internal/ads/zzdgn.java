package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgn.class */
public final class zzdgn {
    private final Set<zzdih<zzdcu>> zza = new HashSet();
    private final Set<zzdih<zzddx>> zzb = new HashSet();
    private final Set<zzdih<zzbcv>> zzc = new HashSet();
    private final Set<zzdih<zzdio>> zzd = new HashSet();
    private final Set<zzdih<zzdbc>> zze = new HashSet();
    private final Set<zzdih<zzdbw>> zzf = new HashSet();
    private final Set<zzdih<zzddb>> zzg = new HashSet();
    private final Set<zzdih<zzdcq>> zzh = new HashSet();
    private final Set<zzdih<zzdbf>> zzi = new HashSet();
    private final Set<zzdih<zzfid>> zzj = new HashSet();
    private final Set<zzdih<zzamv>> zzk = new HashSet();
    private final Set<zzdih<zzdbs>> zzl = new HashSet();
    private final Set<zzdih<zzddn>> zzm = new HashSet();
    private final Set<zzdih<zzo>> zzn = new HashSet();
    private zzexl zzo;

    public final zzdgn zzA(zzexl zzexlVar) {
        this.zzo = zzexlVar;
        return this;
    }

    public final zzdgn zzB(zzddx zzddxVar, Executor executor) {
        this.zzb.add(new zzdih<>(zzddxVar, executor));
        return this;
    }

    public final zzdgp zzC() {
        return new zzdgp(this, null);
    }

    public final zzdgn zzp(zzdbc zzdbcVar, Executor executor) {
        this.zze.add(new zzdih<>(zzdbcVar, executor));
        return this;
    }

    public final zzdgn zzq(zzdcq zzdcqVar, Executor executor) {
        this.zzh.add(new zzdih<>(zzdcqVar, executor));
        return this;
    }

    public final zzdgn zzr(zzdbf zzdbfVar, Executor executor) {
        this.zzi.add(new zzdih<>(zzdbfVar, executor));
        return this;
    }

    public final zzdgn zzs(zzdbs zzdbsVar, Executor executor) {
        this.zzl.add(new zzdih<>(zzdbsVar, executor));
        return this;
    }

    public final zzdgn zzt(zzamv zzamvVar, Executor executor) {
        this.zzk.add(new zzdih<>(zzamvVar, executor));
        return this;
    }

    public final zzdgn zzu(zzbcv zzbcvVar, Executor executor) {
        this.zzc.add(new zzdih<>(zzbcvVar, executor));
        return this;
    }

    public final zzdgn zzv(zzdio zzdioVar, Executor executor) {
        this.zzd.add(new zzdih<>(zzdioVar, executor));
        return this;
    }

    public final zzdgn zzw(zzdbw zzdbwVar, Executor executor) {
        this.zzf.add(new zzdih<>(zzdbwVar, executor));
        return this;
    }

    public final zzdgn zzx(zzddb zzddbVar, Executor executor) {
        this.zzg.add(new zzdih<>(zzddbVar, executor));
        return this;
    }

    public final zzdgn zzy(zzo zzoVar, Executor executor) {
        this.zzn.add(new zzdih<>(zzoVar, executor));
        return this;
    }

    public final zzdgn zzz(zzddn zzddnVar, Executor executor) {
        this.zzm.add(new zzdih<>(zzddnVar, executor));
        return this;
    }
}
