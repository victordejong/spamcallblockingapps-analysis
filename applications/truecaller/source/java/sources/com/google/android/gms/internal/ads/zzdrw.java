package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrw.class */
public final class zzdrw extends zzcxg {
    private final Context zzc;
    private final WeakReference<zzcml> zzd;
    private final zzdkn zze;
    private final zzdhy zzf;
    private final zzdbp zzg;
    private final zzdcw zzh;
    private final zzcya zzi;
    private final zzccp zzj;
    private final zzfit zzk;
    private boolean zzl = false;

    public zzdrw(zzcxf zzcxfVar, Context context, zzcml zzcmlVar, zzdkn zzdknVar, zzdhy zzdhyVar, zzdbp zzdbpVar, zzdcw zzdcwVar, zzcya zzcyaVar, zzezz zzezzVar, zzfit zzfitVar) {
        super(zzcxfVar);
        this.zzc = context;
        this.zze = zzdknVar;
        this.zzd = new WeakReference<>(zzcmlVar);
        this.zzf = zzdhyVar;
        this.zzg = zzdbpVar;
        this.zzh = zzdcwVar;
        this.zzi = zzcyaVar;
        this.zzk = zzfitVar;
        zzccl zzcclVar = zzezzVar.zzm;
        this.zzj = new zzcdj(zzcclVar != null ? zzcclVar.zza : "", zzcclVar != null ? zzcclVar.zzb : 1);
    }

    public final void finalize() throws Throwable {
        try {
            zzcml zzcmlVar = this.zzd.get();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeZ)).booleanValue()) {
                if (!this.zzl && zzcmlVar != null) {
                    zzchg.zze.execute(zzdrv.zza(zzcmlVar));
                }
            } else if (zzcmlVar != null) {
                zzcmlVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [android.content.Context] */
    public final boolean zza(boolean z, Activity activity) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzar)).booleanValue()) {
            zzt.zzc();
            if (zzs.zzJ(this.zzc)) {
                zzcgt.zzi("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzg.zzd();
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzas)).booleanValue()) {
                    return false;
                }
                this.zzk.zza(this.zza.zzb.zzb.zzb);
                return false;
            }
        }
        if (this.zzl) {
            zzcgt.zzi("The rewarded ad have been showed.");
            this.zzg.zza(zzfbm.zzd(10, null, null));
            return false;
        }
        this.zzl = true;
        this.zzf.zza();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzc;
        }
        try {
            this.zze.zza(z, activity2, this.zzg);
            this.zzf.zzb();
            return true;
        } catch (zzdkm e) {
            this.zzg.zzb(e);
            return false;
        }
    }

    public final boolean zzb() {
        return this.zzl;
    }

    public final zzccp zzc() {
        return this.zzj;
    }

    public final boolean zze() {
        return this.zzi.zzg();
    }

    public final boolean zzf() {
        zzcml zzcmlVar = this.zzd.get();
        return zzcmlVar != null && !zzcmlVar.zzaA();
    }

    public final Bundle zzg() {
        return this.zzh.zzb();
    }
}
