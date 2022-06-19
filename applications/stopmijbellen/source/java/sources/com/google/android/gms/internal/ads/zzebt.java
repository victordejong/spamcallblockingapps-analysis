package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebt.class */
public final class zzebt implements zzecb, zzebe {
    private final zzeca zza;
    private final zzecc zzb;
    private final zzebf zzc;
    private final zzebo zzd;
    private final zzebd zze;
    private final String zzf;
    private boolean zzl;
    private int zzm;
    private boolean zzn;
    private String zzh = JsonUtils.EMPTY_JSON;
    private String zzi = "";
    private long zzj = Long.MAX_VALUE;
    private zzebp zzk = zzebp.NONE;
    private zzebs zzo = zzebs.UNKNOWN;
    private final Map<String, List<zzebh>> zzg = new HashMap();

    public zzebt(zzeca zzecaVar, zzecc zzeccVar, zzebf zzebfVar, Context context, zzcjf zzcjfVar, zzebo zzeboVar) {
        this.zza = zzecaVar;
        this.zzb = zzeccVar;
        this.zzc = zzebfVar;
        this.zze = new zzebd(context);
        this.zzf = zzcjfVar.zza;
        this.zzd = zzeboVar;
        zzt.zzs().zzg(this);
    }

    private final JSONObject zzo() throws JSONException {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            for (Map.Entry<String, List<zzebh>> entry : this.zzg.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (zzebh zzebhVar : entry.getValue()) {
                    if (zzebhVar.zzc()) {
                        jSONArray.put(zzebhVar.zzb());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put(entry.getKey(), jSONArray);
                }
            }
        }
        return jSONObject;
    }

    private final void zzp() {
        this.zzn = true;
        this.zzd.zzc();
        this.zza.zzg(this);
        this.zzb.zzc(this);
        this.zzc.zzc(this);
        zzv(zzt.zzo().zzh().zzm());
    }

    private final void zzq() {
        zzt.zzo().zzh().zzC(zzc());
    }

    private final void zzr(zzebp zzebpVar, boolean z) {
        synchronized (this) {
            if (this.zzk == zzebpVar) {
                return;
            }
            if (zzm()) {
                zzt();
            }
            this.zzk = zzebpVar;
            if (zzm()) {
                zzu();
            }
            if (!z) {
                return;
            }
            zzq();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004d A[Catch: all -> 0x0057, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:10:0x000f, B:12:0x0018, B:14:0x002e, B:17:0x0038, B:18:0x003e, B:20:0x0045, B:23:0x004d), top: B:33:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzs(boolean r4, boolean r5) {
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
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzgP     // Catch: java.lang.Throwable -> L57
            r7 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()     // Catch: java.lang.Throwable -> L57
            r1 = r7
            java.lang.Object r0 = r0.zzb(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.zzba r0 = com.google.android.gms.ads.internal.zzt.zzs()     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.zzl()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L3e
        L37:
            r0 = r3
            r0.zzu()     // Catch: java.lang.Throwable -> L57
            goto L49
        L3e:
            r0 = r3
            boolean r0 = r0.zzm()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L49
            r0 = r3
            r0.zzt()     // Catch: java.lang.Throwable -> L57
        L49:
            r0 = r5
            if (r0 == 0) goto L54
            r0 = r3
            r0.zzq()     // Catch: java.lang.Throwable -> L57
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebt.zzs(boolean, boolean):void");
    }

    private final void zzt() {
        synchronized (this) {
            zzebp zzebpVar = zzebp.NONE;
            int ordinal = this.zzk.ordinal();
            if (ordinal == 1) {
                this.zzb.zza();
            } else if (ordinal != 2) {
            } else {
                this.zzc.zza();
            }
        }
    }

    private final void zzu() {
        synchronized (this) {
            zzebp zzebpVar = zzebp.NONE;
            int ordinal = this.zzk.ordinal();
            if (ordinal == 1) {
                this.zzb.zzb();
            } else if (ordinal != 2) {
            } else {
                this.zzc.zzb();
            }
        }
    }

    private final void zzv(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                zzs(jSONObject.optBoolean("isTestMode", false), false);
                zzr(zzebp.zza(jSONObject.optString("gesture", "NONE")), false);
                this.zzh = jSONObject.optString("networkExtras", JsonUtils.EMPTY_JSON);
                this.zzj = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
            } catch (JSONException e) {
            }
        }
    }

    public final zzebp zza() {
        return this.zzk;
    }

    public final String zzb() {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzm()) {
                if (this.zzj < zzt.zzA().currentTimeMillis() / 1000) {
                    this.zzh = JsonUtils.EMPTY_JSON;
                    this.zzj = Long.MAX_VALUE;
                    return "";
                } else if (this.zzh.equals(JsonUtils.EMPTY_JSON)) {
                    return "";
                } else {
                    return this.zzh;
                }
            }
            return "";
        }
    }

    public final String zzc() {
        String jSONObject;
        synchronized (this) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("isTestMode", this.zzl);
                jSONObject2.put("gesture", this.zzk);
                if (this.zzj > zzt.zzA().currentTimeMillis() / 1000) {
                    jSONObject2.put("networkExtras", this.zzh);
                    jSONObject2.put("networkExtrasExpirationSecs", this.zzj);
                }
            } catch (JSONException e) {
            }
            jSONObject = jSONObject2.toString();
        }
        return jSONObject;
    }

    public final JSONObject zzd() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("platform", "ANDROID");
                jSONObject.put("internalSdkVersion", this.zzf);
                jSONObject.put("adapters", this.zzd.zza());
                if (this.zzj < zzt.zzA().currentTimeMillis() / 1000) {
                    this.zzh = JsonUtils.EMPTY_JSON;
                }
                jSONObject.put("networkExtras", this.zzh);
                jSONObject.put("adSlots", zzo());
                jSONObject.put("appInfo", this.zze.zza());
                String zzc = zzt.zzo().zzh().zzg().zzc();
                if (!TextUtils.isEmpty(zzc)) {
                    jSONObject.put("cld", new JSONObject(zzc));
                }
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgQ)).booleanValue() && !TextUtils.isEmpty(this.zzi)) {
                    String valueOf = String.valueOf(this.zzi);
                    zzciz.zze(valueOf.length() != 0 ? "Policy violation data: ".concat(valueOf) : new String("Policy violation data: "));
                    jSONObject.put("policyViolations", new JSONObject(this.zzi));
                }
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
                    jSONObject.put("openAction", this.zzo);
                    jSONObject.put("gesture", this.zzk);
                }
            } catch (JSONException e) {
                zzt.zzo().zzr(e, "Inspector.toJson");
                zzciz.zzk("Ad inspector encountered an error", e);
            }
        }
        return jSONObject;
    }

    public final void zze(String str, zzebh zzebhVar) {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue() && zzm()) {
                if (this.zzm >= ((Integer) zzbgq.zzc().zzb(zzblj.zzgC)).intValue()) {
                    zzciz.zzj("Maximum number of ad requests stored reached. Dropping the current request.");
                    return;
                }
                if (!this.zzg.containsKey(str)) {
                    this.zzg.put(str, new ArrayList());
                }
                this.zzm++;
                this.zzg.get(str).add(zzebhVar);
            }
        }
    }

    public final void zzf() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue()) {
            return;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue() && zzt.zzo().zzh().zzK()) {
            zzp();
            return;
        }
        String zzm = zzt.zzo().zzh().zzm();
        if (TextUtils.isEmpty(zzm)) {
            return;
        }
        try {
            if (!new JSONObject(zzm).optBoolean("isTestMode", false)) {
                return;
            }
            zzp();
        } catch (JSONException e) {
        }
    }

    public final void zzg(zzbin zzbinVar, zzebs zzebsVar) {
        synchronized (this) {
            if (!zzm()) {
                try {
                    zzbinVar.zze(zzfey.zzd(18, null, null));
                    return;
                } catch (RemoteException e) {
                    zzciz.zzj("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                    return;
                }
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue()) {
                this.zzo = zzebsVar;
                this.zza.zzi(zzbinVar, new zzbru(this));
                return;
            }
            try {
                zzbinVar.zze(zzfey.zzd(1, null, null));
                return;
            } catch (RemoteException e2) {
                zzciz.zzj("Ad inspector had an internal error.");
                return;
            }
        }
    }

    public final void zzh(String str, long j) {
        synchronized (this) {
            this.zzh = str;
            this.zzj = j;
            zzq();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        if (r3 != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(boolean r3) {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.zzn
            if (r0 != 0) goto L12
            r0 = r3
            if (r0 == 0) goto L25
            r0 = r2
            r0.zzp()
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
            r0.zzu()
            return
        L25:
            r0 = r2
            boolean r0 = r0.zzm()
            if (r0 != 0) goto L30
            r0 = r2
            r0.zzt()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebt.zzi(boolean):void");
    }

    public final void zzj(zzebp zzebpVar) {
        zzr(zzebpVar, true);
    }

    public final void zzk(String str) {
        synchronized (this) {
            this.zzi = str;
        }
    }

    public final void zzl(boolean z) {
        if (!this.zzn && z) {
            zzp();
        }
        zzs(z, true);
    }

    public final boolean zzm() {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
                return this.zzl || zzt.zzs().zzl();
            }
            return this.zzl;
        }
    }

    public final boolean zzn() {
        boolean z;
        synchronized (this) {
            z = this.zzl;
        }
        return z;
    }
}
