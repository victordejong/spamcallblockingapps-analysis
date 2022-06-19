package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyc.class */
public final class zzdyc implements zzdyk, zzdxn {
    private final zzdyj zza;
    private final zzdyl zzb;
    private final zzdxo zzc;
    private final zzdxx zzd;
    private final zzdxm zze;
    private final String zzf;
    private boolean zzl;
    private int zzm;
    private boolean zzn;
    private String zzh = "{}";
    private String zzi = "";
    private long zzj = RecyclerView.FOREVER_NS;
    private zzdxy zzk = zzdxy.NONE;
    private zzdyb zzo = zzdyb.UNKNOWN;
    private final Map<String, List<zzdxq>> zzg = new HashMap();

    public zzdyc(zzdyj zzdyjVar, zzdyl zzdylVar, zzdxo zzdxoVar, Context context, zzcgz zzcgzVar, zzdxx zzdxxVar) {
        this.zza = zzdyjVar;
        this.zzb = zzdylVar;
        this.zzc = zzdxoVar;
        this.zze = new zzdxm(context);
        this.zzf = zzcgzVar.zza;
        this.zzd = zzdxxVar;
        zzt.zzm().zza(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004d A[Catch: all -> 0x0057, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:10:0x000f, B:12:0x0018, B:14:0x002e, B:17:0x0038, B:18:0x003e, B:20:0x0045, B:23:0x004d), top: B:33:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzo(boolean r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            boolean r0 = r0.zzl     // Catch: java.lang.Throwable -> L57
            r6 = r0
            r0 = r6
            r1 = r4
            if (r0 != r1) goto Lf
            r0 = r3
            monitor-exit(r0)
            return
        Lf:
            r0 = r3
            r1 = r4
            r0.zzl = r1     // Catch: java.lang.Throwable -> L57
            r0 = r4
            if (r0 == 0) goto L3e
            com.google.android.gms.internal.ads.zzbjd<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzbjl.zzgE     // Catch: java.lang.Throwable -> L57
            r7 = r0
            com.google.android.gms.internal.ads.zzbjj r0 = com.google.android.gms.internal.ads.zzbet.zzc()     // Catch: java.lang.Throwable -> L57
            r1 = r7
            java.lang.Object r0 = r0.zzc(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.zzaz r0 = com.google.android.gms.ads.internal.zzt.zzm()     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.zzk()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L3e
        L37:
            r0 = r3
            r0.zzs()     // Catch: java.lang.Throwable -> L57
            goto L49
        L3e:
            r0 = r3
            boolean r0 = r0.zzn()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L49
            r0 = r3
            r0.zzt()     // Catch: java.lang.Throwable -> L57
        L49:
            r0 = r5
            if (r0 == 0) goto L54
            r0 = r3
            r0.zzu()     // Catch: java.lang.Throwable -> L57
            r0 = r3
            monitor-exit(r0)
            return
        L54:
            r0 = r3
            monitor-exit(r0)
            return
        L57:
            r7 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyc.zzo(boolean, boolean):void");
    }

    private final void zzp(zzdxy zzdxyVar, boolean z) {
        synchronized (this) {
            if (this.zzk == zzdxyVar) {
                return;
            }
            if (zzn()) {
                zzt();
            }
            this.zzk = zzdxyVar;
            if (zzn()) {
                zzs();
            }
            if (!z) {
                return;
            }
            zzu();
        }
    }

    private final JSONObject zzq() throws JSONException {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            for (Map.Entry<String, List<zzdxq>> entry : this.zzg.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (zzdxq zzdxqVar : entry.getValue()) {
                    if (zzdxqVar.zzc()) {
                        jSONArray.put(zzdxqVar.zzd());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put(entry.getKey(), jSONArray);
                }
            }
        }
        return jSONObject;
    }

    private final void zzr() {
        this.zzn = true;
        this.zzd.zza();
        this.zza.zzg(this);
        this.zzb.zza(this);
        this.zzc.zza(this);
        zzv(zzt.zzg().zzp().zzG());
    }

    private final void zzs() {
        synchronized (this) {
            zzdxy zzdxyVar = zzdxy.NONE;
            int ordinal = this.zzk.ordinal();
            if (ordinal == 1) {
                this.zzb.zzb();
            } else if (ordinal != 2) {
            } else {
                this.zzc.zzb();
            }
        }
    }

    private final void zzt() {
        synchronized (this) {
            zzdxy zzdxyVar = zzdxy.NONE;
            int ordinal = this.zzk.ordinal();
            if (ordinal == 1) {
                this.zzb.zzc();
            } else if (ordinal != 2) {
            } else {
                this.zzc.zzc();
            }
        }
    }

    private final void zzu() {
        zzt.zzg().zzp().zzH(zzh());
    }

    private final void zzv(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                zzo(jSONObject.optBoolean("isTestMode", false), false);
                zzp(zzdxy.zza(jSONObject.optString("gesture", "NONE")), false);
                this.zzh = jSONObject.optString("networkExtras", "{}");
                this.zzj = jSONObject.optLong("networkExtrasExpirationSecs", RecyclerView.FOREVER_NS);
            } catch (JSONException e) {
            }
        }
    }

    public final void zza() {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue()) {
            return;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue() && zzt.zzg().zzp().zzI()) {
            zzr();
            return;
        }
        String zzG = zzt.zzg().zzp().zzG();
        if (TextUtils.isEmpty(zzG)) {
            return;
        }
        try {
            if (!new JSONObject(zzG).optBoolean("isTestMode", false)) {
                return;
            }
            zzr();
        } catch (JSONException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        if (r3 != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(boolean r3) {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.zzn
            if (r0 != 0) goto L12
            r0 = r3
            if (r0 == 0) goto L25
            r0 = r2
            r0.zzr()
            goto L16
        L12:
            r0 = r3
            if (r0 == 0) goto L25
        L16:
            r0 = r2
            boolean r0 = r0.zzl
            if (r0 == 0) goto L20
            goto L25
        L20:
            r0 = r2
            r0.zzs()
            return
        L25:
            r0 = r2
            boolean r0 = r0.zzn()
            if (r0 != 0) goto L30
            r0 = r2
            r0.zzt()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyc.zzb(boolean):void");
    }

    public final void zzc(boolean z) {
        if (!this.zzn && z) {
            zzr();
        }
        zzo(z, true);
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zzl;
        }
        return z;
    }

    public final void zze(zzdxy zzdxyVar) {
        zzp(zzdxyVar, true);
    }

    public final zzdxy zzf() {
        return this.zzk;
    }

    public final String zzg() {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && zzn()) {
                if (this.zzj < zzt.zzj().mo38787c() / 1000) {
                    this.zzh = "{}";
                    this.zzj = RecyclerView.FOREVER_NS;
                    return "";
                } else if (this.zzh.equals("{}")) {
                    return "";
                } else {
                    return this.zzh;
                }
            }
            return "";
        }
    }

    public final String zzh() {
        String jSONObject;
        synchronized (this) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("isTestMode", this.zzl);
                jSONObject2.put("gesture", this.zzk);
                if (this.zzj > zzt.zzj().mo38787c() / 1000) {
                    jSONObject2.put("networkExtras", this.zzh);
                    jSONObject2.put("networkExtrasExpirationSecs", this.zzj);
                }
            } catch (JSONException e) {
            }
            jSONObject = jSONObject2.toString();
        }
        return jSONObject;
    }

    public final void zzi(String str, long j) {
        synchronized (this) {
            this.zzh = str;
            this.zzj = j;
            zzu();
        }
    }

    public final void zzj(String str, zzdxq zzdxqVar) {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue() && zzn()) {
                if (this.zzm >= ((Integer) zzbet.zzc().zzc(zzbjl.zzgr)).intValue()) {
                    zzcgt.zzi("Maximum number of ad requests stored reached. Dropping the current request.");
                    return;
                }
                if (!this.zzg.containsKey(str)) {
                    this.zzg.put(str, new ArrayList());
                }
                this.zzm++;
                this.zzg.get(str).add(zzdxqVar);
            }
        }
    }

    public final void zzk(zzbgq zzbgqVar, zzdyb zzdybVar) {
        synchronized (this) {
            if (!zzn()) {
                try {
                    zzbgqVar.zze(zzfbm.zzd(18, null, null));
                    return;
                } catch (RemoteException e) {
                    zzcgt.zzi("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                    return;
                }
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue()) {
                this.zzo = zzdybVar;
                this.zza.zzh(zzbgqVar, new zzbps(this));
                return;
            }
            try {
                zzbgqVar.zze(zzfbm.zzd(1, null, null));
                return;
            } catch (RemoteException e2) {
                zzcgt.zzi("Ad inspector had an internal error.");
                return;
            }
        }
    }

    public final void zzl(String str) {
        synchronized (this) {
            this.zzi = str;
        }
    }

    public final JSONObject zzm() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("platform", "ANDROID");
                jSONObject.put("internalSdkVersion", this.zzf);
                jSONObject.put("adapters", this.zzd.zzb());
                if (this.zzj < zzt.zzj().mo38787c() / 1000) {
                    this.zzh = "{}";
                }
                jSONObject.put("networkExtras", this.zzh);
                jSONObject.put("adSlots", zzq());
                jSONObject.put("appInfo", this.zze.zza());
                String zzd = zzt.zzg().zzp().zzn().zzd();
                if (!TextUtils.isEmpty(zzd)) {
                    jSONObject.put("cld", new JSONObject(zzd));
                }
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgF)).booleanValue() && !TextUtils.isEmpty(this.zzi)) {
                    String valueOf = String.valueOf(this.zzi);
                    zzcgt.zzd(valueOf.length() != 0 ? "Policy violation data: ".concat(valueOf) : new String("Policy violation data: "));
                    jSONObject.put("policyViolations", new JSONObject(this.zzi));
                }
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue()) {
                    jSONObject.put("openAction", this.zzo);
                    jSONObject.put("gesture", this.zzk);
                }
            } catch (JSONException e) {
                zzt.zzg().zzl(e, "Inspector.toJson");
                zzcgt.zzj("Ad inspector encountered an error", e);
            }
        }
        return jSONObject;
    }

    public final boolean zzn() {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue()) {
                return this.zzl || zzt.zzm().zzk();
            }
            return this.zzl;
        }
    }
}
