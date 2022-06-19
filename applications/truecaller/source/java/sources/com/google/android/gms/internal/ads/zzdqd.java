package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqd.class */
public final class zzdqd {
    private final zzfar zza;
    private final Executor zzb;
    private final zzdss zzc;
    private final zzdrn zzd;
    private final Context zze;
    private final zzdvi zzf;
    private final zzffc zzg;
    private final zzffu zzh;
    private final zzedq zzi;

    public zzdqd(zzfar zzfarVar, Executor executor, zzdss zzdssVar, Context context, zzdvi zzdviVar, zzffc zzffcVar, zzffu zzffuVar, zzedq zzedqVar, zzdrn zzdrnVar) {
        this.zza = zzfarVar;
        this.zzb = executor;
        this.zzc = zzdssVar;
        this.zze = context;
        this.zzf = zzdviVar;
        this.zzg = zzffcVar;
        this.zzh = zzffuVar;
        this.zzi = zzedqVar;
        this.zzd = zzdrnVar;
    }

    private final void zzh(zzcml zzcmlVar) {
        zzi(zzcmlVar);
        zzcmlVar.zzab("/video", zzbpq.zzl);
        zzcmlVar.zzab("/videoMeta", zzbpq.zzm);
        zzcmlVar.zzab("/precache", new zzclb());
        zzcmlVar.zzab("/delayPageLoaded", zzbpq.zzp);
        zzcmlVar.zzab("/instrument", zzbpq.zzn);
        zzcmlVar.zzab("/log", zzbpq.zzg);
        zzcmlVar.zzab("/click", zzbpq.zzb(null));
        if (this.zza.zzb != null) {
            zzcmlVar.zzR().zzI(true);
            zzcmlVar.zzab("/open", new zzbqc(null, null, null, null, null));
        } else {
            zzcmlVar.zzR().zzI(false);
        }
        if (zzt.zzA().zzb(zzcmlVar.getContext())) {
            zzcmlVar.zzab("/logScionEvent", new zzbpx(zzcmlVar.getContext()));
        }
    }

    private static final void zzi(zzcml zzcmlVar) {
        zzcmlVar.zzab("/videoClicked", zzbpq.zzh);
        zzcmlVar.zzR().zzH(true);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzck)).booleanValue()) {
            zzcmlVar.zzab("/getNativeAdViewSignals", zzbpq.zzs);
        }
        zzcmlVar.zzab("/getNativeClickMeta", zzbpq.zzt);
    }

    public final zzfsm<zzcml> zza(JSONObject jSONObject) {
        return zzfsd.zzi(zzfsd.zzi(zzfsd.zza(null), new zzfrk(this) { // from class: com.google.android.gms.internal.ads.zzdpu
            private final zzdqd zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzc(obj);
            }
        }, this.zzb), new zzfrk(this, jSONObject) { // from class: com.google.android.gms.internal.ads.zzdps
            private final zzdqd zza;
            private final JSONObject zzb;

            {
                this.zza = this;
                this.zzb = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzf(this.zzb, (zzcml) obj);
            }
        }, this.zzb);
    }

    public final zzfsm<zzcml> zzb(String str, String str2, zzezz zzezzVar, zzfac zzfacVar, zzbdl zzbdlVar) {
        return zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, zzbdlVar, zzezzVar, zzfacVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzdpt
            private final zzdqd zza;
            private final zzbdl zzb;
            private final zzezz zzc;
            private final zzfac zzd;
            private final String zze;
            private final String zzf;

            {
                this.zza = this;
                this.zzb = zzbdlVar;
                this.zzc = zzezzVar;
                this.zzd = zzfacVar;
                this.zze = str;
                this.zzf = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzd(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzfsm zzc(Object obj) throws Exception {
        zzcml zzb = this.zzc.zzb(zzbdl.zzb(), null, null);
        zzchk zza = zzchk.zza(zzb);
        zzh(zzb);
        zzb.zzR().zzz(new zzcny(zza) { // from class: com.google.android.gms.internal.ads.zzdpv
            private final zzchk zza;

            {
                this.zza = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzcny
            public final void zzb() {
                this.zza.zzb();
            }
        });
        zzb.loadUrl((String) zzbet.zzc().zzc(zzbjl.zzcj));
        return zza;
    }

    public final /* synthetic */ zzfsm zzd(zzbdl zzbdlVar, zzezz zzezzVar, zzfac zzfacVar, String str, String str2, Object obj) throws Exception {
        zzcml zzb = this.zzc.zzb(zzbdlVar, zzezzVar, zzfacVar);
        zzchk zza = zzchk.zza(zzb);
        if (this.zza.zzb != null) {
            zzh(zzb);
            zzb.zzaf(zzcob.zze());
        } else {
            zzdrk zzb2 = this.zzd.zzb();
            zzb.zzR().zzL(zzb2, zzb2, zzb2, zzb2, zzb2, false, null, new zzb(this.zze, null, null), null, null, this.zzi, this.zzh, this.zzf, this.zzg, null, zzb2);
            zzi(zzb);
        }
        zzb.zzR().zzy(new zzcnx(this, zzb, zza) { // from class: com.google.android.gms.internal.ads.zzdpw
            private final zzdqd zza;
            private final zzcml zzb;
            private final zzchk zzc;

            {
                this.zza = this;
                this.zzb = zzb;
                this.zzc = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzcnx
            public final void zza(boolean z) {
                this.zza.zze(this.zzb, this.zzc, z);
            }
        });
        zzb.zzat(str, str2, null);
        return zza;
    }

    public final /* synthetic */ void zze(zzcml zzcmlVar, zzchk zzchkVar, boolean z) {
        if (!z) {
            zzchkVar.zzd(new zzehs(1, "Html video Web View failed to load."));
            return;
        }
        if (this.zza.zza != null && zzcmlVar.zzh() != null) {
            zzcmlVar.zzh().zzc(this.zza.zza);
        }
        zzchkVar.zzb();
    }

    public final /* synthetic */ zzfsm zzf(JSONObject jSONObject, zzcml zzcmlVar) throws Exception {
        zzchk zza = zzchk.zza(zzcmlVar);
        if (this.zza.zzb != null) {
            zzcmlVar.zzaf(zzcob.zze());
        } else {
            zzcmlVar.zzaf(zzcob.zzd());
        }
        zzcmlVar.zzR().zzy(new zzcnx(this, zzcmlVar, zza) { // from class: com.google.android.gms.internal.ads.zzdpx
            private final zzdqd zza;
            private final zzcml zzb;
            private final zzchk zzc;

            {
                this.zza = this;
                this.zzb = zzcmlVar;
                this.zzc = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzcnx
            public final void zza(boolean z) {
                this.zza.zzg(this.zzb, this.zzc, z);
            }
        });
        zzcmlVar.zzr("google.afma.nativeAds.renderVideo", jSONObject);
        return zza;
    }

    public final /* synthetic */ void zzg(zzcml zzcmlVar, zzchk zzchkVar, boolean z) {
        if (this.zza.zza != null && zzcmlVar.zzh() != null) {
            zzcmlVar.zzh().zzc(this.zza.zza);
        }
        zzchkVar.zzb();
    }
}
