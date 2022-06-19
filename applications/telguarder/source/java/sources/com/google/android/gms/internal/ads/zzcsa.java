package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsa.class */
public final class zzcsa implements zzcag {
    private final zzazn zzboz;
    private final zzdnp zzfwy;
    private final zzdmw zzgeu;
    private final zzdzw<zzbli> zzgtj;
    private final zzbeb zzgtk;

    public zzcsa(zzazn zzaznVar, zzdzw<zzbli> zzdzwVar, zzdmw zzdmwVar, zzbeb zzbebVar, zzdnp zzdnpVar) {
        this.zzboz = zzaznVar;
        this.zzgtj = zzdzwVar;
        this.zzgeu = zzdmwVar;
        this.zzgtk = zzbebVar;
        this.zzfwy = zzdnpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        int i;
        zzbli zzbliVar = (zzbli) zzdzk.zzb(this.zzgtj);
        this.zzgtk.zzay(true);
        zzk zzkVar = new zzk(true, true, false, 0.0f, -1, z, this.zzgeu.zzftq, false);
        zzr.zzkq();
        zzbzw zzahf = zzbliVar.zzahf();
        zzbeb zzbebVar = this.zzgtk;
        if (this.zzgeu.zzhjp != -1) {
            i = this.zzgeu.zzhjp;
        } else {
            if (this.zzfwy.zzhla != null) {
                if (this.zzfwy.zzhla.orientation == 1) {
                    i = 7;
                } else if (this.zzfwy.zzhla.orientation == 2) {
                    i = 6;
                }
            }
            zzd.zzdy("Error setting app open orientation; no targeting orientation available.");
            i = this.zzgeu.zzhjp;
        }
        zzm.zza(context, new AdOverlayInfoParcel((zzvc) null, zzahf, (zzv) null, zzbebVar, i, this.zzboz, this.zzgeu.zzdwd, zzkVar, this.zzgeu.zzhjg.zzdsw, this.zzgeu.zzhjg.zzdsy), true);
    }
}
