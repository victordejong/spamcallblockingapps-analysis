package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdji.class */
public final class zzdji extends zzcxg {
    private final Context zzc;
    private final WeakReference<zzcml> zzd;
    private final zzdhy zze;
    private final zzdkn zzf;
    private final zzcya zzg;
    private final zzfit zzh;
    private final zzdbp zzi;
    private boolean zzj = false;

    public zzdji(zzcxf zzcxfVar, Context context, zzcml zzcmlVar, zzdhy zzdhyVar, zzdkn zzdknVar, zzcya zzcyaVar, zzfit zzfitVar, zzdbp zzdbpVar) {
        super(zzcxfVar);
        this.zzc = context;
        this.zzd = new WeakReference<>(zzcmlVar);
        this.zze = zzdhyVar;
        this.zzf = zzdknVar;
        this.zzg = zzcyaVar;
        this.zzh = zzfitVar;
        this.zzi = zzdbpVar;
    }

    public final void finalize() throws Throwable {
        try {
            zzcml zzcmlVar = this.zzd.get();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeZ)).booleanValue()) {
                if (!this.zzj && zzcmlVar != null) {
                    zzchg.zze.execute(zzdjh.zza(zzcmlVar));
                }
            } else if (zzcmlVar != null) {
                zzcmlVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [android.content.Context] */
    public final boolean zza(boolean z, Activity activity) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzar)).booleanValue()) {
            zzt.zzc();
            if (zzs.zzJ(this.zzc)) {
                zzcgt.zzi("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzi.zzd();
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzas)).booleanValue()) {
                    return false;
                }
                this.zzh.zza(this.zza.zzb.zzb.zzb);
                return false;
            }
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgX)).booleanValue() && this.zzj) {
            zzcgt.zzi("The interstitial ad has been showed.");
            this.zzi.zza(zzfbm.zzd(10, null, null));
        }
        if (!this.zzj) {
            this.zze.zza();
            Activity activity2 = activity;
            if (activity == null) {
                activity2 = this.zzc;
            }
            try {
                this.zzf.zza(z, activity2, this.zzi);
                this.zze.zzb();
                this.zzj = true;
                return true;
            } catch (zzdkm e) {
                this.zzi.zzb(e);
                return false;
            }
        }
        return false;
    }

    public final boolean zzb() {
        return this.zzg.zzg();
    }
}
