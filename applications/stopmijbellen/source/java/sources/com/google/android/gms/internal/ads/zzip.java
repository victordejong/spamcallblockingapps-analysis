package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzip.class */
public final class zzip {
    private final Context zza;
    private final zzdz zzb;
    private zzsv zzc;
    private final zzqk zzd;
    private zzhs zze;
    private final zzte zzf;
    private final zzlb zzg;
    private boolean zzk;
    private final zzcoa zzl;
    private final Looper zzh = zzfn.zzA();
    private final zzg zzi = zzg.zza;
    private final zzio zzj = zzio.zze;
    private final zzgb zzm = new zzgb(0.97f, 1.03f, 1000, 1.0E-7f, zzk.zzc(20), zzk.zzc(500), 0.999f, null);

    @Deprecated
    public zzip(Context context, zzcoa zzcoaVar, byte[] bArr) {
        zzwl zzwlVar = new zzwl();
        zzsp zzspVar = new zzsp(context);
        zzpn zzpnVar = new zzpn(context, zzwlVar);
        zzgc zzgcVar = new zzgc();
        zztn zzg = zztn.zzg(context);
        zzdz zzdzVar = zzdz.zza;
        zzlb zzlbVar = new zzlb(zzdzVar);
        this.zza = context;
        this.zzl = zzcoaVar;
        this.zzc = zzspVar;
        this.zzd = zzpnVar;
        this.zze = zzgcVar;
        this.zzf = zzg;
        this.zzg = zzlbVar;
        this.zzb = zzdzVar;
    }

    public static /* bridge */ /* synthetic */ Context zza(zzip zzipVar) {
        return zzipVar.zza;
    }

    public static /* bridge */ /* synthetic */ Looper zzb(zzip zzipVar) {
        return zzipVar.zzh;
    }

    public static /* bridge */ /* synthetic */ zzg zzc(zzip zzipVar) {
        return zzipVar.zzi;
    }

    public static /* bridge */ /* synthetic */ zzdz zzd(zzip zzipVar) {
        return zzipVar.zzb;
    }

    public static /* bridge */ /* synthetic */ zzhs zze(zzip zzipVar) {
        return zzipVar.zze;
    }

    public static /* bridge */ /* synthetic */ zzio zzf(zzip zzipVar) {
        return zzipVar.zzj;
    }

    public static /* bridge */ /* synthetic */ zzlb zzj(zzip zzipVar) {
        return zzipVar.zzg;
    }

    public static /* bridge */ /* synthetic */ zzqk zzk(zzip zzipVar) {
        return zzipVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzsv zzl(zzip zzipVar) {
        return zzipVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zzte zzm(zzip zzipVar) {
        return zzipVar.zzf;
    }

    public static /* bridge */ /* synthetic */ zzgb zzn(zzip zzipVar) {
        return zzipVar.zzm;
    }

    public static /* bridge */ /* synthetic */ zzcoa zzo(zzip zzipVar) {
        return zzipVar.zzl;
    }

    @Deprecated
    public final zzip zzg(zzhs zzhsVar) {
        zzdy.zzf(!this.zzk);
        this.zze = zzhsVar;
        return this;
    }

    @Deprecated
    public final zzip zzh(zzsv zzsvVar) {
        zzdy.zzf(!this.zzk);
        this.zzc = zzsvVar;
        return this;
    }

    @Deprecated
    public final zziu zzi() {
        zzdy.zzf(!this.zzk);
        this.zzk = true;
        return new zziu(this);
    }
}
