package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuu.class */
public final class zzcuu extends zzbia {
    private final Context zza;
    private final zzcjf zzb;
    private final zzdww zzc;
    private final zzehv<zzfev, zzejq> zzd;
    private final zzenu zze;
    private final zzebb zzf;
    private final zzchh zzg;
    private final zzdxb zzh;
    private final zzebt zzi;
    private final zzbnp zzj;
    @GuardedBy("this")
    private boolean zzk = false;

    public zzcuu(Context context, zzcjf zzcjfVar, zzdww zzdwwVar, zzehv<zzfev, zzejq> zzehvVar, zzenu zzenuVar, zzebb zzebbVar, zzchh zzchhVar, zzdxb zzdxbVar, zzebt zzebtVar, zzbnp zzbnpVar) {
        this.zza = context;
        this.zzb = zzcjfVar;
        this.zzc = zzdwwVar;
        this.zzd = zzehvVar;
        this.zze = zzenuVar;
        this.zzf = zzebbVar;
        this.zzg = zzchhVar;
        this.zzh = zzdxbVar;
        this.zzi = zzebtVar;
        this.zzj = zzbnpVar;
    }

    @VisibleForTesting
    public final void zzb() {
        if (zzt.zzo().zzh().zzK()) {
            if (zzt.zzs().zzj(this.zza, zzt.zzo().zzh().zzk(), this.zzb.zza)) {
                return;
            }
            zzt.zzo().zzh().zzz(false);
            zzt.zzo().zzh().zzy("");
        }
    }

    @VisibleForTesting
    public final void zzc(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map<String, zzbxc> zze = zzt.zzo().zzh().zzg().zze();
        if (zze.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzciz.zzk("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (!this.zzc.zzd()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (zzbxc zzbxcVar : zze.values()) {
            for (zzbxb zzbxbVar : zzbxcVar.zza) {
                String str = zzbxbVar.zzk;
                for (String str2 : zzbxbVar.zzc) {
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, new ArrayList());
                    }
                    if (str != null) {
                        ((Collection) hashMap.get(str2)).add(str);
                    }
                }
            }
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            String str3 = (String) entry.getKey();
            try {
                zzehw<zzfev, zzejq> zza = this.zzd.zza(str3, jSONObject);
                if (zza != null) {
                    zzfev zzfevVar = zza.zzb;
                    if (!zzfevVar.zzA() && zzfevVar.zzz()) {
                        zzfevVar.zzj(this.zza, zza.zzc, (List) entry.getValue());
                        String valueOf = String.valueOf(str3);
                        zzciz.zze(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                    }
                }
            } catch (zzfek e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                sb.append("Failed to initialize rewarded video mediation adapter \"");
                sb.append(str3);
                sb.append("\"");
                zzciz.zzk(sb.toString(), e);
            }
        }
    }

    public final /* synthetic */ void zzd() {
        this.zzj.zza(new zzccy());
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final float zze() {
        float zza;
        synchronized (this) {
            zza = zzt.zzr().zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final String zzf() {
        return this.zzb.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final List<zzbtn> zzg() throws RemoteException {
        return this.zzf.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzh(String str) {
        this.zze.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzi() {
        this.zzf.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzj() {
        synchronized (this) {
            if (this.zzk) {
                zzciz.zzj("Mobile ads is initialized already.");
                return;
            }
            zzblj.zzc(this.zza);
            zzt.zzo().zzq(this.zza, this.zzb);
            zzt.zzc().zzi(this.zza);
            this.zzk = true;
            this.zzf.zzq();
            this.zze.zzd();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcB)).booleanValue()) {
                this.zzh.zzc();
            }
            this.zzi.zzf();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
                zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcuq
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcuu.this.zzb();
                    }
                });
            }
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhr)).booleanValue()) {
                return;
            }
            zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcur
                @Override // java.lang.Runnable
                public final void run() {
                    zzcuu.this.zzd();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzk(String str, IObjectWrapper iObjectWrapper) {
        String str2;
        Runnable runnable;
        zzblj.zzc(this.zza);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcD)).booleanValue()) {
            zzt.zzp();
            str2 = com.google.android.gms.ads.internal.util.zzt.zzv(this.zza);
        } else {
            str2 = "";
        }
        boolean z = true;
        if (true != TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblj.zzcA)).booleanValue();
        zzblb<Boolean> zzblbVar = zzblj.zzaE;
        boolean booleanValue2 = ((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue();
        if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcut
                @Override // java.lang.Runnable
                public final void run() {
                    final zzcuu zzcuuVar = zzcuu.this;
                    final Runnable runnable3 = runnable2;
                    zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcus
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcuu.this.zzc(runnable3);
                        }
                    });
                }
            };
        } else {
            z = booleanValue | booleanValue2;
            runnable = null;
        }
        if (!z) {
            return;
        }
        zzt.zza().zza(this.zza, this.zzb, str, runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzl(zzbin zzbinVar) throws RemoteException {
        this.zzi.zzg(zzbinVar, zzebs.API);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzm(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzciz.zzg("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzciz.zzg("Context is null. Failed to open debug menu.");
            return;
        }
        zzaw zzawVar = new zzaw(context);
        zzawVar.zzn(str);
        zzawVar.zzo(this.zzb.zza);
        zzawVar.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzn(zzbxh zzbxhVar) throws RemoteException {
        this.zzc.zzc(zzbxhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzo(boolean z) {
        synchronized (this) {
            zzt.zzr().zzc(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzp(float f) {
        synchronized (this) {
            zzt.zzr().zzd(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzq(String str) {
        synchronized (this) {
            zzblj.zzc(this.zza);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcA)).booleanValue()) {
                    zzt.zza().zza(this.zza, this.zzb, str, null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzr(zzbtu zzbtuVar) throws RemoteException {
        this.zzf.zzr(zzbtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzs(zzbkk zzbkkVar) throws RemoteException {
        this.zzg.zzq(this.zza, zzbkkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final boolean zzt() {
        boolean zze;
        synchronized (this) {
            zze = zzt.zzr().zze();
        }
        return zze;
    }
}
