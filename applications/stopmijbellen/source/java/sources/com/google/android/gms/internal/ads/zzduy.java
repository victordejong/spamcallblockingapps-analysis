package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduy.class */
public final class zzduy {
    private final zza zzb;
    private final zzcpb zzc;
    private final Context zzd;
    private final zzdyz zze;
    private final zzfio zzf;
    private final Executor zzg;
    private final zzalt zzh;
    private final zzcjf zzi;
    private final zzehh zzk;
    private final zzfjs zzl;
    private zzfxa<zzcop> zzm;
    private final zzdus zza = new zzdus(null);
    private final zzbsh zzj = new zzbsh();

    public zzduy(zzduv zzduvVar) {
        Context context;
        Executor executor;
        zzalt zzaltVar;
        zzcjf zzcjfVar;
        zza zzaVar;
        zzcpb zzcpbVar;
        zzehh zzehhVar;
        zzfjs zzfjsVar;
        zzdyz zzdyzVar;
        zzfio zzfioVar;
        context = zzduvVar.zzc;
        this.zzd = context;
        executor = zzduvVar.zzg;
        this.zzg = executor;
        zzaltVar = zzduvVar.zzh;
        this.zzh = zzaltVar;
        zzcjfVar = zzduvVar.zzi;
        this.zzi = zzcjfVar;
        zzaVar = zzduvVar.zza;
        this.zzb = zzaVar;
        zzcpbVar = zzduvVar.zzb;
        this.zzc = zzcpbVar;
        zzehhVar = zzduvVar.zzf;
        this.zzk = zzehhVar;
        zzfjsVar = zzduvVar.zzj;
        this.zzl = zzfjsVar;
        zzdyzVar = zzduvVar.zzd;
        this.zze = zzdyzVar;
        zzfioVar = zzduvVar.zze;
        this.zzf = zzfioVar;
    }

    public final /* synthetic */ zzcop zza(zzcop zzcopVar) {
        zzcopVar.zzaf("/result", this.zzj);
        zzcqc zzP = zzcopVar.zzP();
        zzdus zzdusVar = this.zza;
        zzP.zzL(null, zzdusVar, zzdusVar, zzdusVar, zzdusVar, false, null, new zzb(this.zzd, null, null), null, null, this.zzk, this.zzl, this.zze, this.zzf, null, null);
        return zzcopVar;
    }

    public final /* synthetic */ zzfxa zzc(String str, JSONObject jSONObject, zzcop zzcopVar) throws Exception {
        return this.zzj.zzb(zzcopVar, str, jSONObject);
    }

    public final zzfxa<JSONObject> zzd(final String str, final JSONObject jSONObject) {
        synchronized (this) {
            zzfxa<zzcop> zzfxaVar = this.zzm;
            if (zzfxaVar == null) {
                return zzfwq.zzi(null);
            }
            return zzfwq.zzn(zzfxaVar, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdul
                @Override // com.google.android.gms.internal.ads.zzfvx
                public final zzfxa zza(Object obj) {
                    return zzduy.this.zzc(str, jSONObject, (zzcop) obj);
                }
            }, this.zzg);
        }
    }

    public final void zze(zzfdn zzfdnVar, zzfdq zzfdqVar) {
        synchronized (this) {
            zzfxa<zzcop> zzfxaVar = this.zzm;
            if (zzfxaVar == null) {
                return;
            }
            zzfwq.zzr(zzfxaVar, new zzduq(this, zzfdnVar, zzfdqVar), this.zzg);
        }
    }

    public final void zzf() {
        synchronized (this) {
            zzfxa<zzcop> zzfxaVar = this.zzm;
            if (zzfxaVar == null) {
                return;
            }
            zzfwq.zzr(zzfxaVar, new zzdum(this), this.zzg);
            this.zzm = null;
        }
    }

    public final void zzg(String str, Map<String, ?> map) {
        synchronized (this) {
            zzfxa<zzcop> zzfxaVar = this.zzm;
            if (zzfxaVar == null) {
                return;
            }
            zzfwq.zzr(zzfxaVar, new zzdup(this, "sendMessageToNativeJs", map), this.zzg);
        }
    }

    public final void zzh() {
        synchronized (this) {
            final Context context = this.zzd;
            final zzcjf zzcjfVar = this.zzi;
            final String str = (String) zzbgq.zzc().zzb(zzblj.zzcp);
            final zzalt zzaltVar = this.zzh;
            final zza zzaVar = this.zzb;
            zzfxa<zzcop> zzm = zzfwq.zzm(zzfwq.zzl(new zzfvw() { // from class: com.google.android.gms.internal.ads.zzcoz
                @Override // com.google.android.gms.internal.ads.zzfvw
                public final zzfxa zza() {
                    Context context2 = context;
                    zzalt zzaltVar2 = zzaltVar;
                    zzcjf zzcjfVar2 = zzcjfVar;
                    zza zzaVar2 = zzaVar;
                    String str2 = str;
                    zzt.zzz();
                    zzcop zza = zzcpb.zza(context2, zzcqe.zza(), "", false, false, zzaltVar2, null, zzcjfVar2, null, null, zzaVar2, zzbay.zza(), null, null);
                    final zzcjq zza2 = zzcjq.zza(zza);
                    zza.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzcox
                        @Override // com.google.android.gms.internal.ads.zzcqa
                        public final void zza(boolean z) {
                            zzcjq.this.zzb();
                        }
                    });
                    zza.loadUrl(str2);
                    return zza2;
                }
            }, zzcjm.zze), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzduk
                @Override // com.google.android.gms.internal.ads.zzfpv
                public final Object apply(Object obj) {
                    zzcop zzcopVar = (zzcop) obj;
                    zzduy.this.zza(zzcopVar);
                    return zzcopVar;
                }
            }, this.zzg);
            this.zzm = zzm;
            zzcjp.zza(zzm, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    public final void zzi(String str, zzbrt<Object> zzbrtVar) {
        synchronized (this) {
            zzfxa<zzcop> zzfxaVar = this.zzm;
            if (zzfxaVar == null) {
                return;
            }
            zzfwq.zzr(zzfxaVar, new zzdun(this, str, zzbrtVar), this.zzg);
        }
    }

    public final <T> void zzj(WeakReference<T> weakReference, String str, zzbrt<T> zzbrtVar) {
        zzi(str, new zzdux(this, weakReference, str, zzbrtVar, null));
    }

    public final void zzk(String str, zzbrt<Object> zzbrtVar) {
        synchronized (this) {
            zzfxa<zzcop> zzfxaVar = this.zzm;
            if (zzfxaVar == null) {
                return;
            }
            zzfwq.zzr(zzfxaVar, new zzduo(this, str, zzbrtVar), this.zzg);
        }
    }
}
