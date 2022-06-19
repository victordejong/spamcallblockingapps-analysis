package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzav;
import com.google.android.gms.ads.internal.util.zzs;
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
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrf.class */
public final class zzcrf extends zzbgd {
    private final Context zza;
    private final zzcgz zzb;
    private final zzdtf zzc;
    private final zzeee<zzfbi, zzefz> zzd;
    private final zzeke zze;
    private final zzdxk zzf;
    private final zzcfa zzg;
    private final zzdtk zzh;
    private final zzdyc zzi;
    private boolean zzj = false;

    public zzcrf(Context context, zzcgz zzcgzVar, zzdtf zzdtfVar, zzeee<zzfbi, zzefz> zzeeeVar, zzeke zzekeVar, zzdxk zzdxkVar, zzcfa zzcfaVar, zzdtk zzdtkVar, zzdyc zzdycVar) {
        this.zza = context;
        this.zzb = zzcgzVar;
        this.zzc = zzdtfVar;
        this.zzd = zzeeeVar;
        this.zze = zzekeVar;
        this.zzf = zzdxkVar;
        this.zzg = zzcfaVar;
        this.zzh = zzdtkVar;
        this.zzi = zzdycVar;
    }

    @VisibleForTesting
    public final void zzb() {
        if (zzt.zzg().zzp().zzI()) {
            if (zzt.zzm().zze(this.zza, zzt.zzg().zzp().zzK(), this.zzb.zza)) {
                return;
            }
            zzt.zzg().zzp().zzJ(false);
            zzt.zzg().zzp().zzL("");
        }
    }

    @VisibleForTesting
    public final void zzc(Runnable runnable) {
        Preconditions.m38902f("Adapters must be initialized on the main thread.");
        Map<String, zzbvb> zzf = zzt.zzg().zzp().zzn().zzf();
        if (zzf.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzcgt.zzj("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (!this.zzc.zzd()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (zzbvb zzbvbVar : zzf.values()) {
            for (zzbva zzbvaVar : zzbvbVar.zza) {
                String str = zzbvaVar.zzk;
                for (String str2 : zzbvaVar.zzc) {
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
                zzeef<zzfbi, zzefz> zza = this.zzd.zza(str3, jSONObject);
                if (zza != null) {
                    zzfbi zzfbiVar = zza.zzb;
                    if (!zzfbiVar.zzn() && zzfbiVar.zzq()) {
                        zzfbiVar.zzr(this.zza, zza.zzc, (List) entry.getValue());
                        String valueOf = String.valueOf(str3);
                        zzcgt.zzd(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                    }
                }
            } catch (zzfaw e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                sb.append("Failed to initialize rewarded video mediation adapter \"");
                sb.append(str3);
                sb.append("\"");
                zzcgt.zzj(sb.toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zze() {
        synchronized (this) {
            if (this.zzj) {
                zzcgt.zzi("Mobile ads is initialized already.");
                return;
            }
            zzbjl.zza(this.zza);
            zzt.zzg().zzi(this.zza, this.zzb);
            zzt.zzi().zzd(this.zza);
            this.zzj = true;
            this.zzf.zzi();
            this.zze.zza();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcu)).booleanValue()) {
                this.zzh.zza();
            }
            this.zzi.zza();
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue()) {
                return;
            }
            zzchg.zza.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcrc
                private final zzcrf zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzb();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzf(float f) {
        synchronized (this) {
            zzt.zzh().zza(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzg(String str) {
        synchronized (this) {
            zzbjl.zza(this.zza);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzct)).booleanValue()) {
                    zzt.zzk().zza(this.zza, this.zzb, str, null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzh(boolean z) {
        synchronized (this) {
            zzt.zzh().zzc(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzi(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzcgt.zzf("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        if (context == null) {
            zzcgt.zzf("Context is null. Failed to open debug menu.");
            return;
        }
        zzav zzavVar = new zzav(context);
        zzavVar.zzc(str);
        zzavVar.zzd(this.zzb.zza);
        zzavVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzj(String str, IObjectWrapper iObjectWrapper) {
        String str2;
        Runnable runnable;
        zzbjl.zza(this.zza);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcw)).booleanValue()) {
            zzt.zzc();
            str2 = zzs.zzv(this.zza);
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
        boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjl.zzct)).booleanValue();
        zzbjd<Boolean> zzbjdVar = zzbjl.zzaB;
        boolean booleanValue2 = ((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue();
        if (((Boolean) zzbet.zzc().zzc(zzbjdVar)).booleanValue()) {
            runnable = new Runnable(this, (Runnable) ObjectWrapper.m38746B1(iObjectWrapper)) { // from class: com.google.android.gms.internal.ads.zzcrd
                private final zzcrf zza;
                private final Runnable zzb;

                {
                    this.zza = this;
                    this.zzb = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final zzcrf zzcrfVar = this.zza;
                    final Runnable runnable3 = this.zzb;
                    zzchg.zze.execute(new Runnable(zzcrfVar, runnable3) { // from class: com.google.android.gms.internal.ads.zzcre
                        private final zzcrf zza;
                        private final Runnable zzb;

                        {
                            this.zza = zzcrfVar;
                            this.zzb = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzc(this.zzb);
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
        zzt.zzk().zza(this.zza, this.zzb, str, runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final float zzk() {
        float zzb;
        synchronized (this) {
            zzb = zzt.zzh().zzb();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final boolean zzl() {
        boolean zzd;
        synchronized (this) {
            zzd = zzt.zzh().zzd();
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final String zzm() {
        return this.zzb.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzn(String str) {
        this.zze.zzd(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzo(zzbvg zzbvgVar) throws RemoteException {
        this.zzc.zza(zzbvgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzp(zzbrs zzbrsVar) throws RemoteException {
        this.zzf.zzh(zzbrsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final List<zzbrl> zzq() throws RemoteException {
        return this.zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzr(zzbim zzbimVar) throws RemoteException {
        this.zzg.zzc(this.zza, zzbimVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzs() {
        this.zzf.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzt(zzbgq zzbgqVar) throws RemoteException {
        this.zzi.zzk(zzbgqVar, zzdyb.API);
    }
}
