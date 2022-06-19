package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzadc;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzrp;
import com.google.android.gms.internal.ads.zzwr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzi.class */
public final class zzi implements zzf {
    private SharedPreferences zzcme;
    private boolean zzedt;
    private zzdzw<?> zzedv;
    private SharedPreferences.Editor zzedx;
    private String zzedz;
    private String zzeea;
    private final Object lock = new Object();
    private final List<Runnable> zzedu = new ArrayList();
    private zzrp zzedw = null;
    private boolean zzedy = false;
    private boolean zzduk = true;
    private boolean zzeeb = true;
    private String zzduz = "";
    private long zzeec = 0;
    private long zzeed = 0;
    private long zzeee = 0;
    private int zzeef = -1;
    private int zzeeg = 0;
    private Set<String> zzeeh = Collections.emptySet();
    private JSONObject zzeei = new JSONObject();
    private boolean zzdwi = true;
    private boolean zzdwt = true;
    private String zzeej = null;
    private int zzeek = -1;

    private final void zzyv() {
        Throwable e;
        zzdzw<?> zzdzwVar = this.zzedv;
        if (zzdzwVar != null && !zzdzwVar.isDone()) {
            try {
                this.zzedv.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                zzd.zzd("Interrupted while waiting for preferences loaded.", e2);
            } catch (CancellationException e3) {
                e = e3;
                zzd.zzc("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (ExecutionException e4) {
                e = e4;
                zzd.zzc("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (TimeoutException e5) {
                e = e5;
                zzd.zzc("Fail to initialize AdSharedPreferenceManager.", e);
            }
        }
    }

    private final void zzyw() {
        zzazp.zzeic.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzk
            private final zzi zzeds;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzeds = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzeds.zzyh();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void initialize(Context context) {
        synchronized (this.lock) {
            if (this.zzcme != null) {
                return;
            }
            this.zzedv = zzazp.zzeic.zzg(new Runnable(this, context, "admob") { // from class: com.google.android.gms.ads.internal.util.zzh
                private final Context zzcle;
                private final String zzdlo;
                private final zzi zzeds;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeds = this;
                    this.zzcle = context;
                    this.zzdlo = r6;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzeds.zzo(this.zzcle, this.zzdlo);
                }
            });
            this.zzedt = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
        r0 = new org.json.JSONObject();
        r0.put("template_id", r7);
        r0.put("uses_media_view", r8);
        r0.put("timestamp_ms", com.google.android.gms.ads.internal.zzr.zzky().currentTimeMillis());
        r11.put(r14, r0);
        r5.zzeei.put(r6, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c6, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
        com.google.android.gms.ads.internal.util.zzd.zzd("Could not update native advanced settings", r6);
     */
    @Override // com.google.android.gms.ads.internal.util.zzf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r6, java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzi.zza(java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzap(boolean z) {
        zzyv();
        synchronized (this.lock) {
            if (this.zzdwi == z) {
                return;
            }
            this.zzdwi = z;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzaq(boolean z) {
        zzyv();
        synchronized (this.lock) {
            if (this.zzdwt == z) {
                return;
            }
            this.zzdwt = z;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzar(boolean z) {
        zzyv();
        synchronized (this.lock) {
            if (z == this.zzeeb) {
                return;
            }
            this.zzeeb = z;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzb(Runnable runnable) {
        this.zzedu.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdd(int i) {
        zzyv();
        synchronized (this.lock) {
            if (this.zzeeg == i) {
                return;
            }
            this.zzeeg = i;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzde(int i) {
        zzyv();
        synchronized (this.lock) {
            if (this.zzeef == i) {
                return;
            }
            this.zzeef = i;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzec(String str) {
        zzyv();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzedz)) {
                    this.zzedz = str;
                    SharedPreferences.Editor editor = this.zzedx;
                    if (editor != null) {
                        editor.putString("content_url_hashes", str);
                        this.zzedx.apply();
                    }
                    zzyw();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzed(String str) {
        zzyv();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzeea)) {
                    this.zzeea = str;
                    SharedPreferences.Editor editor = this.zzedx;
                    if (editor != null) {
                        editor.putString("content_vertical_hashes", str);
                        this.zzedx.apply();
                    }
                    zzyw();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzee(String str) {
        zzyv();
        synchronized (this.lock) {
            long currentTimeMillis = zzr.zzky().currentTimeMillis();
            this.zzeec = currentTimeMillis;
            if (str != null && !str.equals(this.zzduz)) {
                this.zzduz = str;
                SharedPreferences.Editor editor = this.zzedx;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.zzedx.putLong("app_settings_last_update_ms", currentTimeMillis);
                    this.zzedx.apply();
                }
                zzyw();
                for (Runnable runnable : this.zzedu) {
                    runnable.run();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzef(String str) {
        zzyv();
        synchronized (this.lock) {
            if (TextUtils.equals(this.zzeej, str)) {
                return;
            }
            this.zzeej = str;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzez(long j) {
        zzyv();
        synchronized (this.lock) {
            if (this.zzeed == j) {
                return;
            }
            this.zzeed = j;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzfa(long j) {
        zzyv();
        synchronized (this.lock) {
            if (this.zzeee == j) {
                return;
            }
            this.zzeee = j;
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    public final /* synthetic */ void zzo(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.lock) {
            this.zzcme = sharedPreferences;
            this.zzedx = edit;
            boolean z = false;
            if (PlatformVersion.isAtLeastM()) {
                z = false;
                if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    z = true;
                }
            }
            this.zzedy = z;
            this.zzduk = this.zzcme.getBoolean("use_https", this.zzduk);
            this.zzdwi = this.zzcme.getBoolean("content_url_opted_out", this.zzdwi);
            this.zzedz = this.zzcme.getString("content_url_hashes", this.zzedz);
            this.zzeeb = this.zzcme.getBoolean("gad_idless", this.zzeeb);
            this.zzdwt = this.zzcme.getBoolean("content_vertical_opted_out", this.zzdwt);
            this.zzeea = this.zzcme.getString("content_vertical_hashes", this.zzeea);
            this.zzeeg = this.zzcme.getInt("version_code", this.zzeeg);
            this.zzduz = this.zzcme.getString("app_settings_json", this.zzduz);
            this.zzeec = this.zzcme.getLong("app_settings_last_update_ms", this.zzeec);
            this.zzeed = this.zzcme.getLong("app_last_background_time_ms", this.zzeed);
            this.zzeef = this.zzcme.getInt("request_in_session_count", this.zzeef);
            this.zzeee = this.zzcme.getLong("first_ad_req_time_ms", this.zzeee);
            this.zzeeh = this.zzcme.getStringSet("never_pool_slots", this.zzeeh);
            this.zzeej = this.zzcme.getString("display_cutout", this.zzeej);
            this.zzeek = this.zzcme.getInt("app_measurement_npa", this.zzeek);
            try {
                this.zzeei = new JSONObject(this.zzcme.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                zzd.zzd("Could not convert native advanced settings to json object", e);
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final zzrp zzyh() {
        if (!this.zzedt) {
            return null;
        }
        if ((zzyi() && zzyk()) || !zzadc.zzdct.get().booleanValue()) {
            return null;
        }
        synchronized (this.lock) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.zzedw == null) {
                this.zzedw = new zzrp();
            }
            this.zzedw.zzmi();
            zzd.zzew("start fetching content...");
            return this.zzedw;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzyi() {
        boolean z;
        zzyv();
        synchronized (this.lock) {
            z = this.zzdwi;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzyj() {
        String str;
        zzyv();
        synchronized (this.lock) {
            str = this.zzedz;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzyk() {
        boolean z;
        zzyv();
        synchronized (this.lock) {
            z = this.zzdwt;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzyl() {
        String str;
        zzyv();
        synchronized (this.lock) {
            str = this.zzeea;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzym() {
        int i;
        zzyv();
        synchronized (this.lock) {
            i = this.zzeeg;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final zzayp zzyn() {
        zzayp zzaypVar;
        zzyv();
        synchronized (this.lock) {
            zzaypVar = new zzayp(this.zzduz, this.zzeec);
        }
        return zzaypVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzyo() {
        long j;
        zzyv();
        synchronized (this.lock) {
            j = this.zzeed;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzyp() {
        int i;
        zzyv();
        synchronized (this.lock) {
            i = this.zzeef;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzyq() {
        long j;
        zzyv();
        synchronized (this.lock) {
            j = this.zzeee;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final JSONObject zzyr() {
        JSONObject jSONObject;
        zzyv();
        synchronized (this.lock) {
            jSONObject = this.zzeei;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzys() {
        zzyv();
        synchronized (this.lock) {
            this.zzeei = new JSONObject();
            SharedPreferences.Editor editor = this.zzedx;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.zzedx.apply();
            }
            zzyw();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzyt() {
        String str;
        zzyv();
        synchronized (this.lock) {
            str = this.zzeej;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzyu() {
        boolean z;
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcos)).booleanValue()) {
            return false;
        }
        zzyv();
        synchronized (this.lock) {
            z = this.zzeeb;
        }
        return z;
    }
}
