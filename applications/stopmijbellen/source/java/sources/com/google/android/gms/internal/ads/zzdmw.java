package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmw.class */
public final class zzdmw extends zzdav {
    private final Context zzc;
    private final WeakReference<zzcop> zzd;
    private final zzdln zze;
    private final zzdob zzf;
    private final zzdbp zzg;
    private final zzfms zzh;
    private final zzdfe zzi;
    private boolean zzj = false;

    public zzdmw(zzdau zzdauVar, Context context, @Nullable zzcop zzcopVar, zzdln zzdlnVar, zzdob zzdobVar, zzdbp zzdbpVar, zzfms zzfmsVar, zzdfe zzdfeVar) {
        super(zzdauVar);
        this.zzc = context;
        this.zzd = new WeakReference<>(zzcopVar);
        this.zze = zzdlnVar;
        this.zzf = zzdobVar;
        this.zzg = zzdbpVar;
        this.zzh = zzfmsVar;
        this.zzi = zzdfeVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcop zzcopVar = this.zzd.get();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfg)).booleanValue()) {
                if (!this.zzj && zzcopVar != null) {
                    zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmv
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

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [android.content.Context] */
    public final boolean zzc(boolean z, @Nullable Activity activity) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzau)).booleanValue()) {
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzK(this.zzc)) {
                zzciz.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzi.zzb();
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzav)).booleanValue()) {
                    return false;
                }
                this.zzh.zza(this.zza.zzb.zzb.zzb);
                return false;
            }
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhi)).booleanValue() && this.zzj) {
            zzciz.zzj("The interstitial ad has been showed.");
            this.zzi.zza(zzfey.zzd(10, null, null));
        }
        if (!this.zzj) {
            this.zze.zzb();
            Activity activity2 = activity;
            if (activity == null) {
                activity2 = this.zzc;
            }
            try {
                this.zzf.zza(z, activity2, this.zzi);
                this.zze.zza();
                this.zzj = true;
                return true;
            } catch (zzdoa e) {
                this.zzi.zze(e);
                return false;
            }
        }
        return false;
    }
}
