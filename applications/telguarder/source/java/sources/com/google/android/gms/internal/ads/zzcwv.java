package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwv.class */
final class zzcwv implements zzg {
    private final /* synthetic */ zzdmw zzgve;
    private final /* synthetic */ zzdnl zzgvw;
    private final /* synthetic */ zzbaa zzgwx;
    private final /* synthetic */ zzcxb zzgwy;
    private final /* synthetic */ zzcwt zzgwz;

    public zzcwv(zzcwt zzcwtVar, zzbaa zzbaaVar, zzdnl zzdnlVar, zzdmw zzdmwVar, zzcxb zzcxbVar) {
        this.zzgwz = zzcwtVar;
        this.zzgwx = zzbaaVar;
        this.zzgvw = zzdnlVar;
        this.zzgve = zzdmwVar;
        this.zzgwy = zzcxbVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        zzcwy zzcwyVar;
        zzbaa zzbaaVar = this.zzgwx;
        zzcwyVar = this.zzgwz.zzgwu;
        zzbaaVar.set(zzcwyVar.zza(this.zzgvw, this.zzgve, view, this.zzgwy));
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkc() {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkd() {
    }
}
