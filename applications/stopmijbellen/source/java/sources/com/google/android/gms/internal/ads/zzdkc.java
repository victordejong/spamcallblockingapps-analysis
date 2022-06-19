package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkc.class */
public final class zzdkc {
    private final Set<zzdlw<zzdgj>> zza = new HashSet();
    private final Set<zzdlw<zzdhm>> zzb = new HashSet();
    private final Set<zzdlw<zzbes>> zzc = new HashSet();
    private final Set<zzdlw<zzdmd>> zzd = new HashSet();
    private final Set<zzdlw<zzder>> zze = new HashSet();
    private final Set<zzdlw<zzdfl>> zzf = new HashSet();
    private final Set<zzdlw<zzdgq>> zzg = new HashSet();
    private final Set<zzdlw<zzdgf>> zzh = new HashSet();
    private final Set<zzdlw<zzdeu>> zzi = new HashSet();
    private final Set<zzdlw<zzfmb>> zzj = new HashSet();
    private final Set<zzdlw<zzaop>> zzk = new HashSet();
    private final Set<zzdlw<zzdfh>> zzl = new HashSet();
    private final Set<zzdlw<zzdhc>> zzm = new HashSet();
    private final Set<zzdlw<zzo>> zzn = new HashSet();
    private zzfaz zzo;

    public final zzdkc zza(zzbes zzbesVar, Executor executor) {
        this.zzc.add(new zzdlw<>(zzbesVar, executor));
        return this;
    }

    public final zzdkc zzb(zzdeu zzdeuVar, Executor executor) {
        this.zzi.add(new zzdlw<>(zzdeuVar, executor));
        return this;
    }

    public final zzdkc zzc(zzdfh zzdfhVar, Executor executor) {
        this.zzl.add(new zzdlw<>(zzdfhVar, executor));
        return this;
    }

    public final zzdkc zzd(zzdfl zzdflVar, Executor executor) {
        this.zzf.add(new zzdlw<>(zzdflVar, executor));
        return this;
    }

    public final zzdkc zze(zzder zzderVar, Executor executor) {
        this.zze.add(new zzdlw<>(zzderVar, executor));
        return this;
    }

    public final zzdkc zzf(zzdgf zzdgfVar, Executor executor) {
        this.zzh.add(new zzdlw<>(zzdgfVar, executor));
        return this;
    }

    public final zzdkc zzg(zzdgq zzdgqVar, Executor executor) {
        this.zzg.add(new zzdlw<>(zzdgqVar, executor));
        return this;
    }

    public final zzdkc zzh(zzo zzoVar, Executor executor) {
        this.zzn.add(new zzdlw<>(zzoVar, executor));
        return this;
    }

    public final zzdkc zzi(zzdhc zzdhcVar, Executor executor) {
        this.zzm.add(new zzdlw<>(zzdhcVar, executor));
        return this;
    }

    public final zzdkc zzj(zzdhm zzdhmVar, Executor executor) {
        this.zzb.add(new zzdlw<>(zzdhmVar, executor));
        return this;
    }

    public final zzdkc zzk(zzaop zzaopVar, Executor executor) {
        this.zzk.add(new zzdlw<>(zzaopVar, executor));
        return this;
    }

    public final zzdkc zzl(zzdmd zzdmdVar, Executor executor) {
        this.zzd.add(new zzdlw<>(zzdmdVar, executor));
        return this;
    }

    public final zzdkc zzm(zzfaz zzfazVar) {
        this.zzo = zzfazVar;
        return this;
    }

    public final zzdke zzn() {
        return new zzdke(this, null);
    }
}
