package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgk.class */
public final class zzcgk {
    private final Context context;
    private final zzbej zzbqa;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final zzazn zzdtx;
    private final zzei zzesm;
    private final zzdss zzfrf;
    private final Executor zzfsj;
    private final zzb zzghz;
    private final zzcgs zzgiw = new zzcgs(null);
    private final zzain zzgix = new zzain();
    private zzdzw<zzbeb> zzgiy;

    public zzcgk(zzcgt zzcgtVar) {
        Context context;
        Executor executor;
        zzei zzeiVar;
        zzazn zzaznVar;
        zzb zzbVar;
        zzbej zzbejVar;
        zzcqr zzcqrVar;
        zzdss zzdssVar;
        zzckn zzcknVar;
        zzdrz zzdrzVar;
        context = zzcgtVar.context;
        this.context = context;
        executor = zzcgtVar.zzfsj;
        this.zzfsj = executor;
        zzeiVar = zzcgtVar.zzesm;
        this.zzesm = zzeiVar;
        zzaznVar = zzcgtVar.zzdtx;
        this.zzdtx = zzaznVar;
        zzbVar = zzcgtVar.zzghz;
        this.zzghz = zzbVar;
        zzbejVar = zzcgtVar.zzbqa;
        this.zzbqa = zzbejVar;
        zzcqrVar = zzcgtVar.zzdie;
        this.zzdie = zzcqrVar;
        zzdssVar = zzcgtVar.zzfrf;
        this.zzfrf = zzdssVar;
        zzcknVar = zzcgtVar.zzdib;
        this.zzdib = zzcknVar;
        zzdrzVar = zzcgtVar.zzdic;
        this.zzdic = zzdrzVar;
    }

    public final void destroy() {
        synchronized (this) {
            zzdzw<zzbeb> zzdzwVar = this.zzgiy;
            if (zzdzwVar == null) {
                return;
            }
            zzdzk.zza(zzdzwVar, new zzcgl(this), this.zzfsj);
            this.zzgiy = null;
        }
    }

    public final /* synthetic */ zzdzw zza(String str, JSONObject jSONObject, zzbeb zzbebVar) throws Exception {
        return this.zzgix.zza(zzbebVar, str, jSONObject);
    }

    public final void zza(zzdmw zzdmwVar, zzdnb zzdnbVar) {
        synchronized (this) {
            zzdzw<zzbeb> zzdzwVar = this.zzgiy;
            if (zzdzwVar == null) {
                return;
            }
            zzdzk.zza(zzdzwVar, new zzcgp(this, zzdmwVar, zzdnbVar), this.zzfsj);
        }
    }

    public final void zza(String str, zzaif<Object> zzaifVar) {
        synchronized (this) {
            zzdzw<zzbeb> zzdzwVar = this.zzgiy;
            if (zzdzwVar == null) {
                return;
            }
            zzdzk.zza(zzdzwVar, new zzcgo(this, str, zzaifVar), this.zzfsj);
        }
    }

    public final void zza(String str, Map<String, ?> map) {
        synchronized (this) {
            zzdzw<zzbeb> zzdzwVar = this.zzgiy;
            if (zzdzwVar == null) {
                return;
            }
            zzdzk.zza(zzdzwVar, new zzcgq(this, str, map), this.zzfsj);
        }
    }

    public final <T> void zza(WeakReference<T> weakReference, String str, zzaif<T> zzaifVar) {
        zza(str, new zzcgw(this, weakReference, str, zzaifVar, null));
    }

    public final void zzapo() {
        synchronized (this) {
            zzdzw<zzbeb> zzb = zzdzk.zzb(zzbej.zza(this.context, this.zzdtx, (String) zzwr.zzqr().zzd(zzabp.zzcsw), this.zzesm, this.zzghz), new zzdvz(this) { // from class: com.google.android.gms.internal.ads.zzcgj
                private final zzcgk zzgiv;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgiv = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdvz
                public final Object apply(Object obj) {
                    return this.zzgiv.zzj((zzbeb) obj);
                }
            }, this.zzfsj);
            this.zzgiy = zzb;
            zzazw.zza(zzb, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    public final void zzb(String str, zzaif<Object> zzaifVar) {
        synchronized (this) {
            zzdzw<zzbeb> zzdzwVar = this.zzgiy;
            if (zzdzwVar == null) {
                return;
            }
            zzdzk.zza(zzdzwVar, new zzcgn(this, str, zzaifVar), this.zzfsj);
        }
    }

    public final zzdzw<JSONObject> zzc(String str, JSONObject jSONObject) {
        synchronized (this) {
            zzdzw<zzbeb> zzdzwVar = this.zzgiy;
            if (zzdzwVar == null) {
                return zzdzk.zzag(null);
            }
            return zzdzk.zzb(zzdzwVar, new zzdyu(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.zzcgm
                private final String zzdjf;
                private final zzcgk zzgiv;
                private final JSONObject zzgiz;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgiv = this;
                    this.zzdjf = str;
                    this.zzgiz = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.zzdyu
                public final zzdzw zzf(Object obj) {
                    return this.zzgiv.zza(this.zzdjf, this.zzgiz, (zzbeb) obj);
                }
            }, this.zzfsj);
        }
    }

    public final /* synthetic */ zzbeb zzj(zzbeb zzbebVar) {
        zzbebVar.zza("/result", this.zzgix);
        zzbfn zzacx = zzbebVar.zzacx();
        zzcgs zzcgsVar = this.zzgiw;
        zzacx.zza(null, zzcgsVar, zzcgsVar, zzcgsVar, zzcgsVar, false, null, new zza(this.context, null, null), null, null, this.zzdie, this.zzfrf, this.zzdib, this.zzdic);
        return zzbebVar;
    }
}
