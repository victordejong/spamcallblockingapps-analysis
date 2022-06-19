package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduv.class */
public final class zzduv implements Callable<zzduy> {
    private final zza zza;
    private final zzcpb zzb;
    private final Context zzc;
    private final zzdyz zzd;
    private final zzfio zze;
    private final zzehh zzf;
    private final Executor zzg;
    private final zzalt zzh;
    private final zzcjf zzi;
    private final zzfjs zzj;

    public zzduv(Context context, Executor executor, zzalt zzaltVar, zzcjf zzcjfVar, zza zzaVar, zzcpb zzcpbVar, zzehh zzehhVar, zzfjs zzfjsVar, zzdyz zzdyzVar, zzfio zzfioVar) {
        this.zzc = context;
        this.zzg = executor;
        this.zzh = zzaltVar;
        this.zzi = zzcjfVar;
        this.zza = zzaVar;
        this.zzb = zzcpbVar;
        this.zzf = zzehhVar;
        this.zzj = zzfjsVar;
        this.zzd = zzdyzVar;
        this.zze = zzfioVar;
    }

    public static /* bridge */ /* synthetic */ Context zza(zzduv zzduvVar) {
        return zzduvVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zzalt zzb(zzduv zzduvVar) {
        return zzduvVar.zzh;
    }

    public static /* bridge */ /* synthetic */ zza zzc(zzduv zzduvVar) {
        return zzduvVar.zza;
    }

    public static /* bridge */ /* synthetic */ zzcjf zzd(zzduv zzduvVar) {
        return zzduvVar.zzi;
    }

    public static /* bridge */ /* synthetic */ zzcpb zze(zzduv zzduvVar) {
        return zzduvVar.zzb;
    }

    public static /* bridge */ /* synthetic */ zzdyz zzf(zzduv zzduvVar) {
        return zzduvVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzehh zzg(zzduv zzduvVar) {
        return zzduvVar.zzf;
    }

    public static /* bridge */ /* synthetic */ zzfio zzh(zzduv zzduvVar) {
        return zzduvVar.zze;
    }

    public static /* bridge */ /* synthetic */ zzfjs zzi(zzduv zzduvVar) {
        return zzduvVar.zzj;
    }

    public static /* bridge */ /* synthetic */ Executor zzj(zzduv zzduvVar) {
        return zzduvVar.zzg;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ zzduy call() throws Exception {
        zzduy zzduyVar = new zzduy(this);
        zzduyVar.zzh();
        return zzduyVar;
    }
}
