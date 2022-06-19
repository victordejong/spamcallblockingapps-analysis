package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrh.class */
public final class zzdrh {
    private final zza zzb;
    private final zzcmx zzc;
    private final Context zzd;
    private final zzdvi zze;
    private final zzffc zzf;
    private final Executor zzg;
    private final zzaas zzh;
    private final zzcgz zzi;
    private final zzedq zzk;
    private final zzffu zzl;
    private zzfsm<zzcml> zzm;
    private final zzdrb zza = new zzdrb(null);
    private final zzbqf zzj = new zzbqf();

    public zzdrh(zzdrf zzdrfVar) {
        Context context;
        Executor executor;
        zzaas zzaasVar;
        zzcgz zzcgzVar;
        zza zzaVar;
        zzcmx zzcmxVar;
        zzedq zzedqVar;
        zzffu zzffuVar;
        zzdvi zzdviVar;
        zzffc zzffcVar;
        context = zzdrfVar.zzc;
        this.zzd = context;
        executor = zzdrfVar.zzg;
        this.zzg = executor;
        zzaasVar = zzdrfVar.zzh;
        this.zzh = zzaasVar;
        zzcgzVar = zzdrfVar.zzi;
        this.zzi = zzcgzVar;
        zzaVar = zzdrfVar.zza;
        this.zzb = zzaVar;
        zzcmxVar = zzdrfVar.zzb;
        this.zzc = zzcmxVar;
        zzedqVar = zzdrfVar.zzf;
        this.zzk = zzedqVar;
        zzffuVar = zzdrfVar.zzj;
        this.zzl = zzffuVar;
        zzdviVar = zzdrfVar.zzd;
        this.zze = zzdviVar;
        zzffcVar = zzdrfVar.zze;
        this.zzf = zzffcVar;
    }

    public final void zzb() {
        synchronized (this) {
            zzfsm<zzcml> zzj = zzfsd.zzj(zzcmx.zzb(this.zzd, this.zzi, (String) zzbet.zzc().zzc(zzbjl.zzci), this.zzh, this.zzb), new zzfln(this) { // from class: com.google.android.gms.internal.ads.zzdqu
                private final zzdrh zza;

                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.internal.ads.zzfln
                public final Object apply(Object obj) {
                    zzcml zzcmlVar = (zzcml) obj;
                    this.zza.zzk(zzcmlVar);
                    return zzcmlVar;
                }
            }, this.zzg);
            this.zzm = zzj;
            zzchj.zza(zzj, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    public final void zzc() {
        synchronized (this) {
            zzfsm<zzcml> zzfsmVar = this.zzm;
            if (zzfsmVar == null) {
                return;
            }
            zzfsd.zzp(zzfsmVar, new zzdqw(this), this.zzg);
            this.zzm = null;
        }
    }

    public final zzfsm<JSONObject> zzd(String str, JSONObject jSONObject) {
        synchronized (this) {
            zzfsm<zzcml> zzfsmVar = this.zzm;
            if (zzfsmVar == null) {
                return zzfsd.zza(null);
            }
            return zzfsd.zzi(zzfsmVar, new zzfrk(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.zzdqv
                private final zzdrh zza;
                private final String zzb;
                private final JSONObject zzc;

                {
                    this.zza = this;
                    this.zzb = str;
                    this.zzc = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.zzfrk
                public final zzfsm zza(Object obj) {
                    return this.zza.zzj(this.zzb, this.zzc, (zzcml) obj);
                }
            }, this.zzg);
        }
    }

    public final void zze(String str, zzbpr<Object> zzbprVar) {
        synchronized (this) {
            zzfsm<zzcml> zzfsmVar = this.zzm;
            if (zzfsmVar == null) {
                return;
            }
            zzfsd.zzp(zzfsmVar, new zzdqx(this, str, zzbprVar), this.zzg);
        }
    }

    public final void zzf(String str, zzbpr<Object> zzbprVar) {
        synchronized (this) {
            zzfsm<zzcml> zzfsmVar = this.zzm;
            if (zzfsmVar == null) {
                return;
            }
            zzfsd.zzp(zzfsmVar, new zzdqy(this, str, zzbprVar), this.zzg);
        }
    }

    public final void zzg(String str, Map<String, ?> map) {
        synchronized (this) {
            zzfsm<zzcml> zzfsmVar = this.zzm;
            if (zzfsmVar == null) {
                return;
            }
            zzfsd.zzp(zzfsmVar, new zzdqz(this, "sendMessageToNativeJs", map), this.zzg);
        }
    }

    public final void zzh(zzezz zzezzVar, zzfac zzfacVar) {
        synchronized (this) {
            zzfsm<zzcml> zzfsmVar = this.zzm;
            if (zzfsmVar == null) {
                return;
            }
            zzfsd.zzp(zzfsmVar, new zzdra(this, zzezzVar, zzfacVar), this.zzg);
        }
    }

    public final <T> void zzi(WeakReference<T> weakReference, String str, zzbpr<T> zzbprVar) {
        zze(str, new zzdrg(this, weakReference, str, zzbprVar, null));
    }

    public final /* synthetic */ zzfsm zzj(String str, JSONObject jSONObject, zzcml zzcmlVar) throws Exception {
        return this.zzj.zzc(zzcmlVar, str, jSONObject);
    }

    public final /* synthetic */ zzcml zzk(zzcml zzcmlVar) {
        zzcmlVar.zzab("/result", this.zzj);
        zzcnz zzR = zzcmlVar.zzR();
        zzdrb zzdrbVar = this.zza;
        zzR.zzL(null, zzdrbVar, zzdrbVar, zzdrbVar, zzdrbVar, false, null, new zzb(this.zzd, null, null), null, null, this.zzk, this.zzl, this.zze, this.zzf, null, null);
        return zzcmlVar;
    }
}
