package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuq.class */
public final class zzcuq extends zzcxg {
    private final View zzc;
    private final zzcml zzd;
    private final zzfaa zze;
    private final int zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final zzcui zzi;
    private zzaya zzj;

    public zzcuq(zzcxf zzcxfVar, View view, zzcml zzcmlVar, zzfaa zzfaaVar, int i, boolean z, boolean z2, zzcui zzcuiVar) {
        super(zzcxfVar);
        this.zzc = view;
        this.zzd = zzcmlVar;
        this.zze = zzfaaVar;
        this.zzf = i;
        this.zzg = z;
        this.zzh = z2;
        this.zzi = zzcuiVar;
    }

    public final zzfaa zza() {
        return zzfav.zza(this.zzb.zzr, this.zze);
    }

    public final View zzb() {
        return this.zzc;
    }

    public final int zzc() {
        return this.zzf;
    }

    public final boolean zzd() {
        return this.zzg;
    }

    public final boolean zze() {
        return this.zzh;
    }

    public final boolean zzf() {
        return this.zzd.zzR() != null && this.zzd.zzR().zzd();
    }

    public final boolean zzg() {
        return this.zzd.zzT();
    }

    public final void zzh(zzaxq zzaxqVar) {
        this.zzd.zzax(zzaxqVar);
    }

    public final void zzi(long j, int i) {
        this.zzi.zza(j, i);
    }

    public final void zzj(zzaya zzayaVar) {
        this.zzj = zzayaVar;
    }

    public final zzaya zzk() {
        return this.zzj;
    }
}
