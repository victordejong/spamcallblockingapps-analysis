package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyp.class */
public final class zzcyp extends zzdav {
    private final zzcop zzc;
    private final int zzd;
    private final Context zze;
    private final zzcxx zzf;
    private final zzdob zzg;
    private final zzdfe zzh;
    private boolean zzi = false;

    public zzcyp(zzdau zzdauVar, Context context, zzcop zzcopVar, int i, zzcxx zzcxxVar, zzdob zzdobVar, zzdfe zzdfeVar) {
        super(zzdauVar);
        this.zzc = zzcopVar;
        this.zze = context;
        this.zzd = i;
        this.zzf = zzcxxVar;
        this.zzg = zzdobVar;
        this.zzh = zzdfeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdav
    public final void zzT() {
        super.zzT();
        zzcop zzcopVar = this.zzc;
        if (zzcopVar != null) {
            zzcopVar.destroy();
        }
    }

    public final int zza() {
        return this.zzd;
    }

    public final void zzc(zzazn zzaznVar) {
        zzcop zzcopVar = this.zzc;
        if (zzcopVar != null) {
            zzcopVar.zzaj(zzaznVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [android.content.Context] */
    public final void zzd(Activity activity, zzbaa zzbaaVar, boolean z) throws RemoteException {
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zze;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzau)).booleanValue()) {
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzK(activity2)) {
                zzciz.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzh.zzb();
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzav)).booleanValue()) {
                    return;
                }
                new zzfms(activity2.getApplicationContext(), zzt.zzt().zzb()).zza(this.zza.zzb.zzb.zzb);
                return;
            }
        }
        if (this.zzi) {
            zzciz.zzj("App open interstitial ad is already visible.");
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhi)).booleanValue()) {
                this.zzh.zza(zzfey.zzd(10, null, null));
            }
        }
        if (!this.zzi) {
            try {
                this.zzg.zza(z, activity2, this.zzh);
                this.zzi = true;
            } catch (zzdoa e) {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhi)).booleanValue()) {
                    this.zzh.zze(e);
                } else {
                    zzbaaVar.zzd(zzfey.zza(e));
                }
            }
        }
    }

    public final void zze(long j, int i) {
        this.zzf.zza(j, i);
    }
}
