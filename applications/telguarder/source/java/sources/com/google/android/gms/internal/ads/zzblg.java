package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblg.class */
public final class zzblg extends zzbnt {
    private final View view;
    private final zzbeb zzdjd;
    private final zzdmz zzftn;
    private final int zzfto;
    private final boolean zzftp;
    private final boolean zzftq;
    private zzsq zzfuc;
    private final zzbkv zzfud;

    public zzblg(zzbnw zzbnwVar, View view, zzbeb zzbebVar, zzdmz zzdmzVar, int i, boolean z, boolean z2, zzbkv zzbkvVar) {
        super(zzbnwVar);
        this.view = view;
        this.zzdjd = zzbebVar;
        this.zzftn = zzdmzVar;
        this.zzfto = i;
        this.zzftp = z;
        this.zzftq = z2;
        this.zzfud = zzbkvVar;
    }

    public final void zza(zzsh zzshVar) {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            zzbebVar.zza(zzshVar);
        }
    }

    public final void zza(zzsq zzsqVar) {
        this.zzfuc = zzsqVar;
    }

    public final boolean zzadp() {
        zzbeb zzbebVar = this.zzdjd;
        return (zzbebVar == null || zzbebVar.zzacx() == null || !this.zzdjd.zzacx().zzadp()) ? false : true;
    }

    public final int zzajh() {
        return this.zzfto;
    }

    public final boolean zzaji() {
        return this.zzftp;
    }

    public final boolean zzajj() {
        return this.zzftq;
    }

    public final zzdmz zzajq() {
        return zzdnu.zza(this.zzesr.zzhjf, this.zzftn);
    }

    public final View zzajr() {
        return this.view;
    }

    public final boolean zzajs() {
        zzbeb zzbebVar = this.zzdjd;
        return zzbebVar != null && zzbebVar.zzacz();
    }

    public final zzsq zzajt() {
        return this.zzfuc;
    }

    public final void zzb(long j, int i) {
        this.zzfud.zzb(j, i);
    }
}
