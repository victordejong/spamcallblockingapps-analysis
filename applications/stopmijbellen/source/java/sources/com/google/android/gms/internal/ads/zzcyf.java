package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyf.class */
public final class zzcyf extends zzdav {
    private final View zzc;
    private final zzcop zzd;
    private final zzfdo zze;
    private final int zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final zzcxx zzi;
    private zzazx zzj;

    public zzcyf(zzdau zzdauVar, View view, zzcop zzcopVar, zzfdo zzfdoVar, int i, boolean z, boolean z2, zzcxx zzcxxVar) {
        super(zzdauVar);
        this.zzc = view;
        this.zzd = zzcopVar;
        this.zze = zzfdoVar;
        this.zzf = i;
        this.zzg = z;
        this.zzh = z2;
        this.zzi = zzcxxVar;
    }

    public final int zza() {
        return this.zzf;
    }

    public final View zzb() {
        return this.zzc;
    }

    public final zzfdo zzc() {
        return zzfej.zzb(this.zzb.zzs, this.zze);
    }

    public final void zzd(zzazn zzaznVar) {
        this.zzd.zzaj(zzaznVar);
    }

    public final boolean zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return this.zzh;
    }

    public final boolean zzg() {
        return this.zzd.zzay();
    }

    public final boolean zzh() {
        return this.zzd.zzP() != null && this.zzd.zzP().zzJ();
    }

    public final void zzi(long j, int i) {
        this.zzi.zza(j, i);
    }

    public final zzazx zzj() {
        return this.zzj;
    }

    public final void zzk(zzazx zzazxVar) {
        this.zzj = zzazxVar;
    }
}
