package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcva.class */
public final class zzcva extends zzcxg {
    private final zzcml zzc;
    private final int zzd;
    private final Context zze;
    private final zzcui zzf;
    private final zzdkn zzg;
    private final zzdbp zzh;
    private boolean zzi = false;

    public zzcva(zzcxf zzcxfVar, Context context, zzcml zzcmlVar, int i, zzcui zzcuiVar, zzdkn zzdknVar, zzdbp zzdbpVar) {
        super(zzcxfVar);
        this.zzc = zzcmlVar;
        this.zze = context;
        this.zzd = i;
        this.zzf = zzcuiVar;
        this.zzg = zzdknVar;
        this.zzh = zzdbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzT() {
        super.zzT();
        zzcml zzcmlVar = this.zzc;
        if (zzcmlVar != null) {
            zzcmlVar.destroy();
        }
    }

    public final void zza(zzaxq zzaxqVar) {
        zzcml zzcmlVar = this.zzc;
        if (zzcmlVar != null) {
            zzcmlVar.zzax(zzaxqVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [android.content.Context] */
    public final void zzb(Activity activity, zzayd zzaydVar, boolean z) throws RemoteException {
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zze;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzar)).booleanValue()) {
            zzt.zzc();
            if (zzs.zzJ(activity2)) {
                zzcgt.zzi("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzh.zzd();
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzas)).booleanValue()) {
                    return;
                }
                new zzfit(activity2.getApplicationContext(), zzt.zzq().zza()).zza(this.zza.zzb.zzb.zzb);
                return;
            }
        }
        if (this.zzi) {
            zzcgt.zzi("App open interstitial ad is already visible.");
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgX)).booleanValue()) {
                this.zzh.zza(zzfbm.zzd(10, null, null));
            }
        }
        if (!this.zzi) {
            try {
                this.zzg.zza(z, activity2, this.zzh);
                this.zzi = true;
            } catch (zzdkm e) {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgX)).booleanValue()) {
                    this.zzh.zzb(e);
                } else {
                    zzaydVar.zze(zzfbm.zza(e));
                }
            }
        }
    }

    public final int zzc() {
        return this.zzd;
    }

    public final void zze(long j, int i) {
        this.zzf.zza(j, i);
    }
}
