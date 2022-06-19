package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzayz;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbmq;
import com.google.android.gms.internal.ads.zzcif;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzfxa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzj.class */
public final class zzj implements zzg {
    private boolean zzb;
    private zzfxa<?> zzd;
    @GuardedBy("lock")
    private SharedPreferences zzf;
    @GuardedBy("lock")
    private SharedPreferences.Editor zzg;
    @GuardedBy("lock")
    private String zzi;
    @GuardedBy("lock")
    private String zzj;
    private final Object zza = new Object();
    private final List<Runnable> zzc = new ArrayList();
    @GuardedBy("lock")
    private zzayz zze = null;
    @GuardedBy("lock")
    private boolean zzh = true;
    @GuardedBy("lock")
    private boolean zzk = true;
    @GuardedBy("lock")
    private zzcif zzl = new zzcif("", 0);
    @GuardedBy("lock")
    private long zzm = 0;
    @GuardedBy("lock")
    private long zzn = 0;
    @GuardedBy("lock")
    private int zzo = -1;
    @GuardedBy("lock")
    private int zzp = 0;
    @GuardedBy("lock")
    private Set<String> zzq = Collections.emptySet();
    @GuardedBy("lock")
    private JSONObject zzr = new JSONObject();
    @GuardedBy("lock")
    private boolean zzs = true;
    @GuardedBy("lock")
    private boolean zzt = true;
    @GuardedBy("lock")
    private String zzu = null;
    @GuardedBy("lock")
    private String zzv = "";
    @GuardedBy("lock")
    private boolean zzw = false;
    @GuardedBy("lock")
    private String zzx = "";
    @GuardedBy("lock")
    private int zzy = -1;
    @GuardedBy("lock")
    private int zzz = -1;
    @GuardedBy("lock")
    private long zzA = 0;

    private final void zzN() {
        Throwable e;
        zzfxa<?> zzfxaVar = this.zzd;
        if (zzfxaVar != null && !zzfxaVar.isDone()) {
            try {
                this.zzd.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                zzciz.zzk("Interrupted while waiting for preferences loaded.", e2);
            } catch (CancellationException e3) {
                e = e3;
                zzciz.zzh("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (ExecutionException e4) {
                e = e4;
                zzciz.zzh("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (TimeoutException e5) {
                e = e5;
                zzciz.zzh("Fail to initialize AdSharedPreferenceManager.", e);
            }
        }
    }

    private final void zzO() {
        zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzj.this.zzf();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzA(String str) {
        zzN();
        synchronized (this.zza) {
            if (TextUtils.equals(this.zzu, str)) {
                return;
            }
            this.zzu = str;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzB(long j) {
        zzN();
        synchronized (this.zza) {
            if (this.zzn == j) {
                return;
            }
            this.zzn = j;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzC(String str) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue()) {
            return;
        }
        zzN();
        synchronized (this.zza) {
            if (this.zzv.equals(str)) {
                return;
            }
            this.zzv = str;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putString("inspector_info", str);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzD(boolean z) {
        zzN();
        synchronized (this.zza) {
            if (z == this.zzk) {
                return;
            }
            this.zzk = z;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.zzg.apply();
            }
            zzO();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0087, code lost:
        r0 = new org.json.JSONObject();
        r0.put("template_id", r7);
        r0.put("uses_media_view", r8);
        r0.put("timestamp_ms", com.google.android.gms.ads.internal.zzt.zzA().currentTimeMillis());
        r11.put(r14, r0);
        r5.zzr.put(r6, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ce, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cf, code lost:
        com.google.android.gms.internal.ads.zzciz.zzk("Could not update native advanced settings", r6);
     */
    @Override // com.google.android.gms.ads.internal.util.zzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzE(java.lang.String r6, java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.zzE(java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzF(int i) {
        zzN();
        synchronized (this.zza) {
            if (this.zzo == i) {
                return;
            }
            this.zzo = i;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzG(int i) {
        zzN();
        synchronized (this.zza) {
            if (this.zzz == i) {
                return;
            }
            this.zzz = i;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzH(long j) {
        zzN();
        synchronized (this.zza) {
            if (this.zzA == j) {
                return;
            }
            this.zzA = j;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putLong("sd_app_measure_npa_ts", j);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzI() {
        boolean z;
        zzN();
        synchronized (this.zza) {
            z = this.zzs;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzJ() {
        boolean z;
        zzN();
        synchronized (this.zza) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzK() {
        boolean z;
        zzN();
        synchronized (this.zza) {
            z = this.zzw;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzL() {
        boolean z;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzao)).booleanValue()) {
            return false;
        }
        zzN();
        synchronized (this.zza) {
            z = this.zzk;
        }
        return z;
    }

    public final /* synthetic */ void zzM(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(AppLovinMediationProvider.ADMOB, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.zza) {
            this.zzf = sharedPreferences;
            this.zzg = edit;
            if (PlatformVersion.isAtLeastM()) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.zzh = this.zzf.getBoolean("use_https", this.zzh);
            this.zzs = this.zzf.getBoolean("content_url_opted_out", this.zzs);
            this.zzi = this.zzf.getString("content_url_hashes", this.zzi);
            this.zzk = this.zzf.getBoolean("gad_idless", this.zzk);
            this.zzt = this.zzf.getBoolean("content_vertical_opted_out", this.zzt);
            this.zzj = this.zzf.getString("content_vertical_hashes", this.zzj);
            this.zzp = this.zzf.getInt("version_code", this.zzp);
            this.zzl = new zzcif(this.zzf.getString("app_settings_json", this.zzl.zzc()), this.zzf.getLong("app_settings_last_update_ms", this.zzl.zza()));
            this.zzm = this.zzf.getLong("app_last_background_time_ms", this.zzm);
            this.zzo = this.zzf.getInt("request_in_session_count", this.zzo);
            this.zzn = this.zzf.getLong("first_ad_req_time_ms", this.zzn);
            this.zzq = this.zzf.getStringSet("never_pool_slots", this.zzq);
            this.zzu = this.zzf.getString("display_cutout", this.zzu);
            this.zzy = this.zzf.getInt("app_measurement_npa", this.zzy);
            this.zzz = this.zzf.getInt("sd_app_measure_npa", this.zzz);
            this.zzA = this.zzf.getLong("sd_app_measure_npa_ts", this.zzA);
            this.zzv = this.zzf.getString("inspector_info", this.zzv);
            this.zzw = this.zzf.getBoolean("linked_device", this.zzw);
            this.zzx = this.zzf.getString("linked_ad_unit", this.zzx);
            try {
                this.zzr = new JSONObject(this.zzf.getString("native_advanced_settings", JsonUtils.EMPTY_JSON));
            } catch (JSONException e) {
                zzciz.zzk("Could not convert native advanced settings to json object", e);
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zza() {
        int i;
        zzN();
        synchronized (this.zza) {
            i = this.zzp;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzb() {
        int i;
        zzN();
        synchronized (this.zza) {
            i = this.zzo;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzc() {
        long j;
        zzN();
        synchronized (this.zza) {
            j = this.zzm;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzd() {
        long j;
        zzN();
        synchronized (this.zza) {
            j = this.zzn;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zze() {
        long j;
        zzN();
        synchronized (this.zza) {
            j = this.zzA;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzayz zzf() {
        if (!this.zzb) {
            return null;
        }
        if ((zzI() && zzJ()) || !zzbmq.zzb.zze().booleanValue()) {
            return null;
        }
        synchronized (this.zza) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.zze == null) {
                this.zze = new zzayz();
            }
            this.zze.zze();
            zzciz.zzi("start fetching content...");
            return this.zze;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzcif zzg() {
        zzcif zzcifVar;
        zzN();
        synchronized (this.zza) {
            zzcifVar = this.zzl;
        }
        return zzcifVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzcif zzh() {
        zzcif zzcifVar;
        synchronized (this.zza) {
            zzcifVar = this.zzl;
        }
        return zzcifVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzi() {
        String str;
        zzN();
        synchronized (this.zza) {
            str = this.zzi;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzj() {
        String str;
        zzN();
        synchronized (this.zza) {
            str = this.zzj;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzk() {
        String str;
        zzN();
        synchronized (this.zza) {
            str = this.zzx;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzl() {
        String str;
        zzN();
        synchronized (this.zza) {
            str = this.zzu;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzm() {
        String str;
        zzN();
        synchronized (this.zza) {
            str = this.zzv;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final JSONObject zzn() {
        JSONObject jSONObject;
        zzN();
        synchronized (this.zza) {
            jSONObject = this.zzr;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzo(Runnable runnable) {
        this.zzc.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzp(Context context) {
        synchronized (this.zza) {
            if (this.zzf != null) {
                return;
            }
            this.zzd = zzcjm.zza.zza(new Runnable(context, AppLovinMediationProvider.ADMOB) { // from class: com.google.android.gms.ads.internal.util.zzi
                public final /* synthetic */ Context zzb;
                public final /* synthetic */ String zzc = AppLovinMediationProvider.ADMOB;

                @Override // java.lang.Runnable
                public final void run() {
                    zzj.this.zzM(this.zzb, this.zzc);
                }
            });
            this.zzb = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzq() {
        zzN();
        synchronized (this.zza) {
            this.zzr = new JSONObject();
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzr(long j) {
        zzN();
        synchronized (this.zza) {
            if (this.zzm == j) {
                return;
            }
            this.zzm = j;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzs(String str) {
        zzN();
        synchronized (this.zza) {
            long currentTimeMillis = zzt.zzA().currentTimeMillis();
            if (str != null && !str.equals(this.zzl.zzc())) {
                this.zzl = new zzcif(str, currentTimeMillis);
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.zzg.putLong("app_settings_last_update_ms", currentTimeMillis);
                    this.zzg.apply();
                }
                zzO();
                for (Runnable runnable : this.zzc) {
                    runnable.run();
                }
                return;
            }
            this.zzl.zzg(currentTimeMillis);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzt(int i) {
        zzN();
        synchronized (this.zza) {
            if (this.zzp == i) {
                return;
            }
            this.zzp = i;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzu(String str) {
        zzN();
        synchronized (this.zza) {
            if (str.equals(this.zzi)) {
                return;
            }
            this.zzi = str;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putString("content_url_hashes", str);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzv(boolean z) {
        zzN();
        synchronized (this.zza) {
            if (this.zzs == z) {
                return;
            }
            this.zzs = z;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzw(String str) {
        zzN();
        synchronized (this.zza) {
            if (str.equals(this.zzj)) {
                return;
            }
            this.zzj = str;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putString("content_vertical_hashes", str);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzx(boolean z) {
        zzN();
        synchronized (this.zza) {
            if (this.zzt == z) {
                return;
            }
            this.zzt = z;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzy(String str) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
            return;
        }
        zzN();
        synchronized (this.zza) {
            if (this.zzx.equals(str)) {
                return;
            }
            this.zzx = str;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putString("linked_ad_unit", str);
                this.zzg.apply();
            }
            zzO();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzz(boolean z) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue()) {
            return;
        }
        zzN();
        synchronized (this.zza) {
            if (this.zzw == z) {
                return;
            }
            this.zzw = z;
            SharedPreferences.Editor editor = this.zzg;
            if (editor != null) {
                editor.putBoolean("linked_device", z);
                this.zzg.apply();
            }
            zzO();
        }
    }
}
