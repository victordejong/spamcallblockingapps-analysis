package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C12274cj;
import com.google.android.gms.internal.ads.C13065ye;
import com.google.android.gms.internal.ads.C13091zd;
import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.efb;
import com.google.android.gms.internal.ads.ekb;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzi.class */
public final class zzi implements zzf {
    private SharedPreferences zzcmn;
    private boolean zzefv;
    private dbt<?> zzefx;
    private SharedPreferences.Editor zzefz;
    private String zzegb;
    private String zzegc;
    private final Object lock = new Object();
    private final List<Runnable> zzefw = new ArrayList();
    private efb zzefy = null;
    private boolean zzega = false;
    private boolean zzdvu = true;
    private boolean zzegd = true;
    private C13065ye zzege = new C13065ye("", 0);
    private long zzegf = 0;
    private long zzegg = 0;
    private int zzegh = -1;
    private int zzegi = 0;
    private Set<String> zzegj = Collections.emptySet();
    private JSONObject zzegk = new JSONObject();
    private boolean zzdxs = true;
    private boolean zzdyd = true;
    private String zzegl = null;
    private int zzegm = -1;
    private int zzegn = -1;

    private final void zzzo() {
        Throwable e;
        dbt<?> dbtVar = this.zzefx;
        if (dbtVar != null && !dbtVar.isDone()) {
            try {
                this.zzefx.get(1L, TimeUnit.SECONDS);
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

    private final void zzzp() {
        C13091zd.f50118a.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzk
            private final zzi zzefu;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzefu = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefu.zzza();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void initialize(Context context) {
        synchronized (this.lock) {
            if (this.zzcmn != null) {
                return;
            }
            this.zzefx = C13091zd.f50118a.mo16891a(new Runnable(this, context, "admob") { // from class: com.google.android.gms.ads.internal.util.zzh
                private final Context zzclh;
                private final String zzdmx;
                private final zzi zzefu;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzefu = this;
                    this.zzclh = context;
                    this.zzdmx = r6;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzefu.zzo(this.zzclh, this.zzdmx);
                }
            });
            this.zzefv = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
        r0 = new org.json.JSONObject();
        r0.put("template_id", r7);
        r0.put("uses_media_view", r8);
        r0.put("timestamp_ms", com.google.android.gms.ads.internal.zzr.zzlc().mo19039a());
        r11.put(r14, r0);
        r5.zzegk.put(r6, r11);
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
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzi.zza(java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzas(boolean z) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzdxs == z) {
                return;
            }
            this.zzdxs = z;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzat(boolean z) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzdyd == z) {
                return;
            }
            this.zzdyd = z;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzau(boolean z) {
        zzzo();
        synchronized (this.lock) {
            if (z == this.zzegd) {
                return;
            }
            this.zzegd = z;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzb(Runnable runnable) {
        this.zzefw.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdi(int i) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzegi == i) {
                return;
            }
            this.zzegi = i;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdj(int i) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzegh == i) {
                return;
            }
            this.zzegh = i;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzdk(int i) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzegn == i) {
                return;
            }
            this.zzegn = i;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzee(String str) {
        zzzo();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzegb)) {
                    this.zzegb = str;
                    SharedPreferences.Editor editor = this.zzefz;
                    if (editor != null) {
                        editor.putString("content_url_hashes", str);
                        this.zzefz.apply();
                    }
                    zzzp();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzef(String str) {
        zzzo();
        synchronized (this.lock) {
            if (str != null) {
                if (!str.equals(this.zzegc)) {
                    this.zzegc = str;
                    SharedPreferences.Editor editor = this.zzefz;
                    if (editor != null) {
                        editor.putString("content_vertical_hashes", str);
                        this.zzefz.apply();
                    }
                    zzzp();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzeg(String str) {
        zzzo();
        synchronized (this.lock) {
            long mo19039a = zzr.zzlc().mo19039a();
            if (str != null && !str.equals(this.zzege.f50057c)) {
                this.zzege = new C13065ye(str, mo19039a);
                SharedPreferences.Editor editor = this.zzefz;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.zzefz.putLong("app_settings_last_update_ms", mo19039a);
                    this.zzefz.apply();
                }
                zzzp();
                for (Runnable runnable : this.zzefw) {
                    runnable.run();
                }
                return;
            }
            this.zzege.f50058d = mo19039a;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzeh(String str) {
        zzzo();
        synchronized (this.lock) {
            if (TextUtils.equals(this.zzegl, str)) {
                return;
            }
            this.zzegl = str;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzfa(long j) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzegf == j) {
                return;
            }
            this.zzegf = j;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzfb(long j) {
        zzzo();
        synchronized (this.lock) {
            if (this.zzegg == j) {
                return;
            }
            this.zzegg = j;
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    public final /* synthetic */ void zzo(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.lock) {
            this.zzcmn = sharedPreferences;
            this.zzefz = edit;
            boolean z = false;
            if (C12110n.m19014h()) {
                z = false;
                if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    z = true;
                }
            }
            this.zzega = z;
            this.zzdvu = this.zzcmn.getBoolean("use_https", this.zzdvu);
            this.zzdxs = this.zzcmn.getBoolean("content_url_opted_out", this.zzdxs);
            this.zzegb = this.zzcmn.getString("content_url_hashes", this.zzegb);
            this.zzegd = this.zzcmn.getBoolean("gad_idless", this.zzegd);
            this.zzdyd = this.zzcmn.getBoolean("content_vertical_opted_out", this.zzdyd);
            this.zzegc = this.zzcmn.getString("content_vertical_hashes", this.zzegc);
            this.zzegi = this.zzcmn.getInt("version_code", this.zzegi);
            this.zzege = new C13065ye(this.zzcmn.getString("app_settings_json", this.zzege.f50057c), this.zzcmn.getLong("app_settings_last_update_ms", this.zzege.f50058d));
            this.zzegf = this.zzcmn.getLong("app_last_background_time_ms", this.zzegf);
            this.zzegh = this.zzcmn.getInt("request_in_session_count", this.zzegh);
            this.zzegg = this.zzcmn.getLong("first_ad_req_time_ms", this.zzegg);
            this.zzegj = this.zzcmn.getStringSet("never_pool_slots", this.zzegj);
            this.zzegl = this.zzcmn.getString("display_cutout", this.zzegl);
            this.zzegm = this.zzcmn.getInt("app_measurement_npa", this.zzegm);
            this.zzegn = this.zzcmn.getInt("sd_app_measure_npa", this.zzegn);
            try {
                this.zzegk = new JSONObject(this.zzcmn.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                zzd.zzd("Could not convert native advanced settings to json object", e);
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final efb zzza() {
        if (!this.zzefv) {
            return null;
        }
        if ((zzzb() && zzzd()) || !C12274cj.f45888b.mo17481a().booleanValue()) {
            return null;
        }
        synchronized (this.lock) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.zzefy == null) {
                this.zzefy = new efb();
            }
            efb efbVar = this.zzefy;
            synchronized (efbVar.f48931c) {
                if (efbVar.f48929a) {
                    zzd.zzdz("Content hash thread already started, quiting...");
                } else {
                    efbVar.f48929a = true;
                    efbVar.start();
                }
            }
            zzd.zzey("start fetching content...");
            return this.zzefy;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzzb() {
        boolean z;
        zzzo();
        synchronized (this.lock) {
            z = this.zzdxs;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzzc() {
        String str;
        zzzo();
        synchronized (this.lock) {
            str = this.zzegb;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzzd() {
        boolean z;
        zzzo();
        synchronized (this.lock) {
            z = this.zzdyd;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzze() {
        String str;
        zzzo();
        synchronized (this.lock) {
            str = this.zzegc;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzzf() {
        int i;
        zzzo();
        synchronized (this.lock) {
            i = this.zzegi;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final C13065ye zzzg() {
        C13065ye c13065ye;
        zzzo();
        synchronized (this.lock) {
            c13065ye = this.zzege;
        }
        return c13065ye;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzzh() {
        long j;
        zzzo();
        synchronized (this.lock) {
            j = this.zzegf;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final int zzzi() {
        int i;
        zzzo();
        synchronized (this.lock) {
            i = this.zzegh;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final long zzzj() {
        long j;
        zzzo();
        synchronized (this.lock) {
            j = this.zzegg;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final JSONObject zzzk() {
        JSONObject jSONObject;
        zzzo();
        synchronized (this.lock) {
            jSONObject = this.zzegk;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final void zzzl() {
        zzzo();
        synchronized (this.lock) {
            this.zzegk = new JSONObject();
            SharedPreferences.Editor editor = this.zzefz;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.zzefz.apply();
            }
            zzzp();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final String zzzm() {
        String str;
        zzzo();
        synchronized (this.lock) {
            str = this.zzegl;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzf
    public final boolean zzzn() {
        boolean z;
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42675al)).booleanValue()) {
            return false;
        }
        zzzo();
        synchronized (this.lock) {
            z = this.zzegd;
        }
        return z;
    }
}
