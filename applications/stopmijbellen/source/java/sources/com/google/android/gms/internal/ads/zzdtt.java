package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtt.class */
public final class zzdtt {
    private final zzfef zza;
    private final Executor zzb;
    private final zzdwj zzc;
    private final zzdve zzd;
    private final Context zze;
    private final zzdyz zzf;
    private final zzfio zzg;
    private final zzfjs zzh;
    private final zzehh zzi;

    public zzdtt(zzfef zzfefVar, Executor executor, zzdwj zzdwjVar, Context context, zzdyz zzdyzVar, zzfio zzfioVar, zzfjs zzfjsVar, zzehh zzehhVar, zzdve zzdveVar) {
        this.zza = zzfefVar;
        this.zzb = executor;
        this.zzc = zzdwjVar;
        this.zze = context;
        this.zzf = zzdyzVar;
        this.zzg = zzfioVar;
        this.zzh = zzfjsVar;
        this.zzi = zzehhVar;
        this.zzd = zzdveVar;
    }

    private final void zzh(zzcop zzcopVar) {
        zzi(zzcopVar);
        zzcopVar.zzaf("/video", zzbrs.zzl);
        zzcopVar.zzaf("/videoMeta", zzbrs.zzm);
        zzcopVar.zzaf("/precache", new zzcng());
        zzcopVar.zzaf("/delayPageLoaded", zzbrs.zzp);
        zzcopVar.zzaf("/instrument", zzbrs.zzn);
        zzcopVar.zzaf("/log", zzbrs.zzg);
        zzcopVar.zzaf("/click", zzbrs.zza(null));
        if (this.zza.zzb != null) {
            zzcopVar.zzP().zzC(true);
            zzcopVar.zzaf("/open", new zzbse(null, null, null, null, null));
        } else {
            zzcopVar.zzP().zzC(false);
        }
        if (zzt.zzn().zzu(zzcopVar.getContext())) {
            zzcopVar.zzaf("/logScionEvent", new zzbrz(zzcopVar.getContext()));
        }
    }

    private static final void zzi(zzcop zzcopVar) {
        zzcopVar.zzaf("/videoClicked", zzbrs.zzh);
        zzcopVar.zzP().zzE(true);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcr)).booleanValue()) {
            zzcopVar.zzaf("/getNativeAdViewSignals", zzbrs.zzs);
        }
        zzcopVar.zzaf("/getNativeClickMeta", zzbrs.zzt);
    }

    public final zzfxa<zzcop> zza(final JSONObject jSONObject) {
        return zzfwq.zzn(zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdtl
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzdtt.this.zze(obj);
            }
        }, this.zzb), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdtn
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzdtt.this.zzc(jSONObject, (zzcop) obj);
            }
        }, this.zzb);
    }

    public final zzfxa<zzcop> zzb(final String str, final String str2, final zzfdn zzfdnVar, final zzfdq zzfdqVar, final zzbfi zzbfiVar) {
        return zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdtm
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzdtt.this.zzd(zzbfiVar, zzfdnVar, zzfdqVar, str, str2, obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzfxa zzc(JSONObject jSONObject, final zzcop zzcopVar) throws Exception {
        final zzcjq zza = zzcjq.zza(zzcopVar);
        if (this.zza.zzb != null) {
            zzcopVar.zzai(zzcqe.zzd());
        } else {
            zzcopVar.zzai(zzcqe.zze());
        }
        zzcopVar.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdti
            @Override // com.google.android.gms.internal.ads.zzcqa
            public final void zza(boolean z) {
                zzdtt.this.zzf(zzcopVar, zza, z);
            }
        });
        zzcopVar.zzl("google.afma.nativeAds.renderVideo", jSONObject);
        return zza;
    }

    public final /* synthetic */ zzfxa zzd(zzbfi zzbfiVar, zzfdn zzfdnVar, zzfdq zzfdqVar, String str, String str2, Object obj) throws Exception {
        final zzcop zza = this.zzc.zza(zzbfiVar, zzfdnVar, zzfdqVar);
        final zzcjq zza2 = zzcjq.zza(zza);
        if (this.zza.zzb != null) {
            zzh(zza);
            zza.zzai(zzcqe.zzd());
        } else {
            zzdvb zzb = this.zzd.zzb();
            zza.zzP().zzL(zzb, zzb, zzb, zzb, zzb, false, null, new zzb(this.zze, null, null), null, null, this.zzi, this.zzh, this.zzf, this.zzg, null, zzb);
            zzi(zza);
        }
        zza.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdtj
            @Override // com.google.android.gms.internal.ads.zzcqa
            public final void zza(boolean z) {
                zzdtt.this.zzg(zza, zza2, z);
            }
        });
        zza.zzad(str, str2, null);
        return zza2;
    }

    public final /* synthetic */ zzfxa zze(Object obj) throws Exception {
        zzcop zza = this.zzc.zza(zzbfi.zzc(), null, null);
        final zzcjq zza2 = zzcjq.zza(zza);
        zzh(zza);
        zza.zzP().zzF(new zzcqb() { // from class: com.google.android.gms.internal.ads.zzdtk
            @Override // com.google.android.gms.internal.ads.zzcqb
            public final void zza() {
                zzcjq.this.zzb();
            }
        });
        zza.loadUrl((String) zzbgq.zzc().zzb(zzblj.zzcq));
        return zza2;
    }

    public final /* synthetic */ void zzf(zzcop zzcopVar, zzcjq zzcjqVar, boolean z) {
        if (this.zza.zza != null && zzcopVar.zzs() != null) {
            zzcopVar.zzs().zzs(this.zza.zza);
        }
        zzcjqVar.zzb();
    }

    public final /* synthetic */ void zzg(zzcop zzcopVar, zzcjq zzcjqVar, boolean z) {
        if (!z) {
            zzcjqVar.zze(new zzelj(1, "Html video Web View failed to load."));
            return;
        }
        if (this.zza.zza != null && zzcopVar.zzs() != null) {
            zzcopVar.zzs().zzs(this.zza.zza);
        }
        zzcjqVar.zzb();
    }
}
