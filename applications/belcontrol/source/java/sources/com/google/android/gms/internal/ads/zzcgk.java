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
    private final zzcgs zzgiw = new zzcgs((zzcgl) null);
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

    public final /* synthetic */ zzdzw zza(String str, JSONObject jSONObject, zzbeb zzbebVar) {
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
        zza(str, (zzaif<Object>) new zzcgw(this, weakReference, str, zzaifVar, (zzcgl) null));
    }

    public final void zzapo() {
        synchronized (this) {
            zzdzw<zzbeb> zzb = zzdzk.zzb(zzbej.zza(this.context, this.zzdtx, (String) zzwr.zzqr().zzd(zzabp.zzcsw), this.zzesm, this.zzghz), new zzcgj(this), this.zzfsj);
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
                return zzdzk.zzag((Object) null);
            }
            return zzdzk.zzb(zzdzwVar, new zzcgm(this, str, jSONObject), this.zzfsj);
        }
    }

    public final /* synthetic */ zzbeb zzj(zzbeb zzbebVar) {
        zzbebVar.zza("/result", this.zzgix);
        zzbfn zzacx = zzbebVar.zzacx();
        zzcgs zzcgsVar = this.zzgiw;
        zzacx.zza((zzvc) null, zzcgsVar, zzcgsVar, zzcgsVar, zzcgsVar, false, (zzaie) null, new zza(this.context, null, null), (zzaqt) null, (zzawz) null, this.zzdie, this.zzfrf, this.zzdib, this.zzdic);
        return zzbebVar;
    }
}
