package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvn.class */
public final class zzdvn extends zzdav {
    private final Context zzc;
    private final WeakReference<zzcop> zzd;
    private final zzdob zze;
    private final zzdln zzf;
    private final zzdfe zzg;
    private final zzdgl zzh;
    private final zzdbp zzi;
    private final zzcew zzj;
    private final zzfms zzk;
    private boolean zzl = false;

    public zzdvn(zzdau zzdauVar, Context context, zzcop zzcopVar, zzdob zzdobVar, zzdln zzdlnVar, zzdfe zzdfeVar, zzdgl zzdglVar, zzdbp zzdbpVar, zzfdn zzfdnVar, zzfms zzfmsVar) {
        super(zzdauVar);
        this.zzc = context;
        this.zze = zzdobVar;
        this.zzd = new WeakReference<>(zzcopVar);
        this.zzf = zzdlnVar;
        this.zzg = zzdfeVar;
        this.zzh = zzdglVar;
        this.zzi = zzdbpVar;
        this.zzk = zzfmsVar;
        zzces zzcesVar = zzfdnVar.zzm;
        this.zzj = new zzcfq(zzcesVar != null ? zzcesVar.zza : "", zzcesVar != null ? zzcesVar.zzb : 1);
    }

    public final void finalize() throws Throwable {
        try {
            final zzcop zzcopVar = this.zzd.get();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfg)).booleanValue()) {
                if (!this.zzl && zzcopVar != null) {
                    zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvm
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcop.this.destroy();
                        }
                    });
                }
            } else if (zzcopVar != null) {
                zzcopVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final Bundle zza() {
        return this.zzh.zzb();
    }

    public final zzcew zzc() {
        return this.zzj;
    }

    public final boolean zzd() {
        return this.zzi.zzg();
    }

    public final boolean zze() {
        return this.zzl;
    }

    public final boolean zzf() {
        zzcop zzcopVar = this.zzd.get();
        return zzcopVar != null && !zzcopVar.zzaD();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [android.content.Context] */
    public final boolean zzg(boolean z, Activity activity) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzau)).booleanValue()) {
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzK(this.zzc)) {
                zzciz.zzj("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzg.zzb();
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzav)).booleanValue()) {
                    return false;
                }
                this.zzk.zza(this.zza.zzb.zzb.zzb);
                return false;
            }
        }
        if (this.zzl) {
            zzciz.zzj("The rewarded ad have been showed.");
            this.zzg.zza(zzfey.zzd(10, null, null));
            return false;
        }
        this.zzl = true;
        this.zzf.zzb();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzc;
        }
        try {
            this.zze.zza(z, activity2, this.zzg);
            this.zzf.zza();
            return true;
        } catch (zzdoa e) {
            this.zzg.zze(e);
            return false;
        }
    }
}
