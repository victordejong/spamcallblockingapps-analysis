package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvu.class */
public final class zzcvu implements zzcag {
    private final Context context;
    private final zzazn zzboz;
    private final zzdmw zzesr;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzdzw<zzchd> zzgtj;
    private final zzbeb zzgvt;

    /* JADX INFO: Access modifiers changed from: private */
    public zzcvu(Context context, zzchq zzchqVar, zzdnp zzdnpVar, zzazn zzaznVar, zzdmw zzdmwVar, zzdzw<zzchd> zzdzwVar, zzbeb zzbebVar) {
        this.context = context;
        this.zzggk = zzchqVar;
        this.zzfwy = zzdnpVar;
        this.zzboz = zzaznVar;
        this.zzesr = zzdmwVar;
        this.zzgtj = zzdzwVar;
        this.zzgvt = zzbebVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        zzbeb zzbebVar;
        zzchd zzchdVar = (zzchd) zzdzk.zzb(this.zzgtj);
        try {
            zzdmw zzdmwVar = this.zzesr;
            if (!this.zzgvt.zzadm()) {
                zzbebVar = this.zzgvt;
            } else {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpd)).booleanValue()) {
                    zzbebVar = this.zzggk.zze(this.zzfwy.zzbpo);
                    zzaio.zza(zzbebVar, zzchdVar.zzaih());
                    zzcig zzcigVar = new zzcig();
                    zzcigVar.zzc(this.context, zzbebVar.getView());
                    zzchdVar.zzahe().zza(zzbebVar, true);
                    zzbebVar.zzacx().zza(new zzbfq(zzcigVar, zzbebVar) { // from class: com.google.android.gms.internal.ads.zzcvt
                        private final zzbeb zzggw;
                        private final zzcig zzgtf;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzgtf = zzcigVar;
                            this.zzggw = zzbebVar;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbfq
                        public final void zzal(boolean z2) {
                            zzcig zzcigVar2 = this.zzgtf;
                            zzbeb zzbebVar2 = this.zzggw;
                            zzcigVar2.zzapr();
                            zzbebVar2.zzacr();
                            zzbebVar2.zzacx().zzadv();
                        }
                    });
                    zzbfn zzacx = zzbebVar.zzacx();
                    zzbebVar.getClass();
                    zzacx.zza(zzcvw.zzn(zzbebVar));
                    zzbebVar.zzb(zzdmwVar.zzhjg.zzdsw, zzdmwVar.zzhjg.zzdsy, null);
                    zzbebVar.zzay(true);
                    zzr.zzkr();
                    zzk zzkVar = new zzk(false, zzj.zzax(this.context), false, 0.0f, -1, z, this.zzesr.zzftq, this.zzesr.zzbpm);
                    zzr.zzkq();
                    zzm.zza(context, new AdOverlayInfoParcel((zzvc) null, zzchdVar.zzahf(), (zzv) null, zzbebVar, this.zzesr.zzhjp, this.zzboz, this.zzesr.zzdwd, zzkVar, this.zzesr.zzhjg.zzdsw, this.zzesr.zzhjg.zzdsy), true);
                }
                zzbebVar = this.zzgvt;
            }
            zzbebVar.zzay(true);
            zzr.zzkr();
            zzk zzkVar2 = new zzk(false, zzj.zzax(this.context), false, 0.0f, -1, z, this.zzesr.zzftq, this.zzesr.zzbpm);
            zzr.zzkq();
            zzm.zza(context, new AdOverlayInfoParcel((zzvc) null, zzchdVar.zzahf(), (zzv) null, zzbebVar, this.zzesr.zzhjp, this.zzboz, this.zzesr.zzdwd, zzkVar2, this.zzesr.zzhjg.zzdsw, this.zzesr.zzhjg.zzdsy), true);
        } catch (zzben e) {
            zzazk.zzc("", e);
        }
    }
}
