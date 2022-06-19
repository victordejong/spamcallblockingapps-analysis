package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbf;
import com.google.android.gms.ads.internal.util.zzce;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvt.class */
public final class zzbvt {
    private final Context zzb;
    private final String zzc;
    private final zzcjf zzd;
    private final zzbf<zzbuo> zze;
    private final zzbf<zzbuo> zzf;
    private zzbvs zzg;
    private final Object zza = new Object();
    private int zzh = 1;

    public zzbvt(Context context, zzcjf zzcjfVar, String str, zzbf<zzbuo> zzbfVar, zzbf<zzbuo> zzbfVar2) {
        this.zzc = str;
        this.zzb = context.getApplicationContext();
        this.zzd = zzcjfVar;
        this.zze = zzbfVar;
        this.zzf = zzbfVar2;
    }

    public final zzbvn zzb(zzalt zzaltVar) {
        synchronized (this.zza) {
            synchronized (this.zza) {
                zzbvs zzbvsVar = this.zzg;
                if (zzbvsVar != null && this.zzh == 0) {
                    zzbvsVar.zzi(new zzcjv() { // from class: com.google.android.gms.internal.ads.zzbva
                        @Override // com.google.android.gms.internal.ads.zzcjv
                        public final void zza(Object obj) {
                            zzbvt.this.zzj((zzbuo) obj);
                        }
                    }, zzbuz.zza);
                }
            }
            zzbvs zzbvsVar2 = this.zzg;
            if (zzbvsVar2 != null && zzbvsVar2.zze() != -1) {
                int i = this.zzh;
                if (i == 0) {
                    return this.zzg.zza();
                } else if (i != 1) {
                    return this.zzg.zza();
                } else {
                    this.zzh = 2;
                    zzd(null);
                    return this.zzg.zza();
                }
            }
            this.zzh = 2;
            zzbvs zzd = zzd(null);
            this.zzg = zzd;
            return zzd.zza();
        }
    }

    public final zzbvs zzd(zzalt zzaltVar) {
        zzbvs zzbvsVar = new zzbvs(this.zzf);
        zzcjm.zze.execute(new Runnable(null, zzbvsVar) { // from class: com.google.android.gms.internal.ads.zzbvc
            public final /* synthetic */ zzbvs zzb;

            {
                this.zzb = zzbvsVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbvt.this.zzi(null, this.zzb);
            }
        });
        zzbvsVar.zzi(new zzbvi(this, zzbvsVar), new zzbvj(this, zzbvsVar));
        return zzbvsVar;
    }

    public final /* synthetic */ void zzh(zzbvs zzbvsVar, final zzbuo zzbuoVar) {
        synchronized (this.zza) {
            if (zzbvsVar.zze() != -1 && zzbvsVar.zze() != 1) {
                zzbvsVar.zzg();
                zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvb
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbuo.this.zzc();
                    }
                });
                zze.zza("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    public final /* synthetic */ void zzi(zzalt zzaltVar, zzbvs zzbvsVar) {
        try {
            zzbuw zzbuwVar = new zzbuw(this.zzb, this.zzd, null, null);
            zzbuwVar.zzk(new zzbuy(this, zzbvsVar, zzbuwVar));
            zzbuwVar.zzq("/jsLoaded", new zzbve(this, zzbvsVar, zzbuwVar));
            zzce zzceVar = new zzce();
            zzbvf zzbvfVar = new zzbvf(this, null, zzbuwVar, zzceVar);
            zzceVar.zzb(zzbvfVar);
            zzbuwVar.zzq("/requestReload", zzbvfVar);
            if (this.zzc.endsWith(".js")) {
                zzbuwVar.zzh(this.zzc);
            } else if (this.zzc.startsWith("<html>")) {
                zzbuwVar.zzf(this.zzc);
            } else {
                zzbuwVar.zzg(this.zzc);
            }
            zzt.zza.postDelayed(new zzbvh(this, zzbvsVar, zzbuwVar), 60000L);
        } catch (Throwable th) {
            zzciz.zzh("Error creating webview.", th);
            com.google.android.gms.ads.internal.zzt.zzo().zzs(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzbvsVar.zzg();
        }
    }

    public final /* synthetic */ void zzj(zzbuo zzbuoVar) {
        if (zzbuoVar.zzi()) {
            this.zzh = 1;
        }
    }
}
