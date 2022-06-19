package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctl.class */
public final class zzctl implements zzcag {
    private final Context context;
    private final zzazn zzboz;
    private final zzdmw zzgeu;
    private final zzdzw<zzbza> zzgtj;
    private final zzbeb zzgtk;

    /* JADX INFO: Access modifiers changed from: private */
    public zzctl(Context context, zzazn zzaznVar, zzdzw<zzbza> zzdzwVar, zzdmw zzdmwVar, zzbeb zzbebVar) {
        this.context = context;
        this.zzboz = zzaznVar;
        this.zzgtj = zzdzwVar;
        this.zzgeu = zzdmwVar;
        this.zzgtk = zzbebVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        zzbza zzbzaVar = (zzbza) zzdzk.zzb(this.zzgtj);
        this.zzgtk.zzay(true);
        zzr.zzkr();
        zzk zzkVar = new zzk(false, zzj.zzax(this.context), false, 0.0f, -1, z, this.zzgeu.zzftq, false);
        zzr.zzkq();
        zzm.zza(context, new AdOverlayInfoParcel((zzvc) null, zzbzaVar.zzahf(), (zzv) null, this.zzgtk, this.zzgeu.zzhjp, this.zzboz, this.zzgeu.zzdwd, zzkVar, this.zzgeu.zzhjg.zzdsw, this.zzgeu.zzhjg.zzdsy), true);
    }
}
