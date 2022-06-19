package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.C2716m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.uz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uz.class */
public final class C3561uz implements AbstractC3558uw {

    /* renamed from: b */
    private boolean f17468b;

    /* renamed from: d */
    private crt<?> f17470d;
    @GuardedBy("lock")

    /* renamed from: f */
    private SharedPreferences f17472f;
    @GuardedBy("lock")

    /* renamed from: g */
    private SharedPreferences.Editor f17473g;
    @GuardedBy("lock")

    /* renamed from: j */
    private String f17476j;
    @GuardedBy("lock")

    /* renamed from: k */
    private String f17477k;

    /* renamed from: a */
    private final Object f17467a = new Object();

    /* renamed from: c */
    private final List<Runnable> f17469c = new ArrayList();
    @GuardedBy("lock")

    /* renamed from: e */
    private dui f17471e = null;
    @GuardedBy("lock")

    /* renamed from: h */
    private boolean f17474h = false;
    @GuardedBy("lock")

    /* renamed from: i */
    private boolean f17475i = true;
    @GuardedBy("lock")

    /* renamed from: l */
    private boolean f17478l = false;
    @GuardedBy("lock")

    /* renamed from: m */
    private String f17479m = "";
    @GuardedBy("lock")

    /* renamed from: n */
    private long f17480n = 0;
    @GuardedBy("lock")

    /* renamed from: o */
    private long f17481o = 0;
    @GuardedBy("lock")

    /* renamed from: p */
    private long f17482p = 0;
    @GuardedBy("lock")

    /* renamed from: q */
    private int f17483q = -1;
    @GuardedBy("lock")

    /* renamed from: r */
    private int f17484r = 0;
    @GuardedBy("lock")

    /* renamed from: s */
    private Set<String> f17485s = Collections.emptySet();
    @GuardedBy("lock")

    /* renamed from: t */
    private JSONObject f17486t = new JSONObject();
    @GuardedBy("lock")

    /* renamed from: u */
    private boolean f17487u = true;
    @GuardedBy("lock")

    /* renamed from: v */
    private boolean f17488v = true;
    @GuardedBy("lock")

    /* renamed from: w */
    private String f17489w = null;
    @GuardedBy("lock")

    /* renamed from: x */
    private int f17490x = -1;

    /* renamed from: a */
    private final void m7047a(Bundle bundle) {
        C3650yg.f17642a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.vb

            /* renamed from: a */
            private final C3561uz f17493a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17493a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17493a.mo7039a();
            }
        });
    }

    /* renamed from: o */
    private final void m7046o() {
        if (this.f17470d != null && !this.f17470d.isDone()) {
            try {
                this.f17470d.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                C3556uu.m6746d("Interrupted while waiting for preferences loaded.", e);
            } catch (CancellationException e2) {
                e = e2;
                C3556uu.m6748c("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (ExecutionException e3) {
                e = e3;
                C3556uu.m6748c("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (TimeoutException e4) {
                e = e4;
                C3556uu.m6748c("Fail to initialize AdSharedPreferenceManager.", e);
            }
        }
    }

    /* renamed from: p */
    private final Bundle m7045p() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.f17467a) {
            bundle.putBoolean("use_https", this.f17475i);
            bundle.putBoolean("content_url_opted_out", this.f17487u);
            bundle.putBoolean("content_vertical_opted_out", this.f17488v);
            bundle.putBoolean("auto_collect_location", this.f17478l);
            bundle.putInt("version_code", this.f17484r);
            bundle.putStringArray("never_pool_slots", (String[]) this.f17485s.toArray(new String[0]));
            bundle.putString("app_settings_json", this.f17479m);
            bundle.putLong("app_settings_last_update_ms", this.f17480n);
            bundle.putLong("app_last_background_time_ms", this.f17481o);
            bundle.putInt("request_in_session_count", this.f17483q);
            bundle.putLong("first_ad_req_time_ms", this.f17482p);
            bundle.putString("native_advanced_settings", this.f17486t.toString());
            bundle.putString("display_cutout", this.f17489w);
            bundle.putInt("app_measurement_npa", this.f17490x);
            if (this.f17476j != null) {
                bundle.putString("content_url_hashes", this.f17476j);
            }
            if (this.f17477k != null) {
                bundle.putString("content_vertical_hashes", this.f17477k);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final dui mo7039a() {
        dui duiVar;
        if (!this.f17468b) {
            duiVar = null;
        } else if (mo7032b() && mo7024d()) {
            duiVar = null;
        } else if (!C2773ak.f9858b.mo13599a().booleanValue()) {
            duiVar = null;
        } else {
            synchronized (this.f17467a) {
                if (Looper.getMainLooper() == null) {
                    duiVar = null;
                } else {
                    if (this.f17471e == null) {
                        this.f17471e = new dui();
                    }
                    this.f17471e.m8547a();
                    C3556uu.m6747d("start fetching content...");
                    duiVar = this.f17471e;
                }
            }
        }
        return duiVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final void mo7038a(int i) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17484r == i) {
                return;
            }
            this.f17484r = i;
            if (this.f17473g != null) {
                this.f17473g.putInt("version_code", i);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("version_code", i);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final void mo7037a(long j) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17481o == j) {
                return;
            }
            this.f17481o = j;
            if (this.f17473g != null) {
                this.f17473g.putLong("app_last_background_time_ms", j);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", j);
            m7047a(bundle);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m7049a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.f17467a) {
            this.f17472f = sharedPreferences;
            this.f17473g = edit;
            boolean z = false;
            if (C2716m.m13834i()) {
                z = false;
                if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    z = true;
                }
            }
            this.f17474h = z;
            this.f17475i = this.f17472f.getBoolean("use_https", this.f17475i);
            this.f17487u = this.f17472f.getBoolean("content_url_opted_out", this.f17487u);
            this.f17476j = this.f17472f.getString("content_url_hashes", this.f17476j);
            this.f17478l = this.f17472f.getBoolean("auto_collect_location", this.f17478l);
            this.f17488v = this.f17472f.getBoolean("content_vertical_opted_out", this.f17488v);
            this.f17477k = this.f17472f.getString("content_vertical_hashes", this.f17477k);
            this.f17484r = this.f17472f.getInt("version_code", this.f17484r);
            this.f17479m = this.f17472f.getString("app_settings_json", this.f17479m);
            this.f17480n = this.f17472f.getLong("app_settings_last_update_ms", this.f17480n);
            this.f17481o = this.f17472f.getLong("app_last_background_time_ms", this.f17481o);
            this.f17483q = this.f17472f.getInt("request_in_session_count", this.f17483q);
            this.f17482p = this.f17472f.getLong("first_ad_req_time_ms", this.f17482p);
            this.f17485s = this.f17472f.getStringSet("never_pool_slots", this.f17485s);
            this.f17489w = this.f17472f.getString("display_cutout", this.f17489w);
            this.f17490x = this.f17472f.getInt("app_measurement_npa", this.f17490x);
            try {
                this.f17486t = new JSONObject(this.f17472f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                C3556uu.m6746d("Could not convert native advanced settings to json object", e);
            }
            m7047a(m7045p());
        }
    }

    /* renamed from: a */
    public final void m7048a(Context context, String str, boolean z) {
        String concat;
        synchronized (this.f17467a) {
            if (this.f17472f != null) {
                return;
            }
            if (str == null) {
                concat = "admob";
            } else {
                String valueOf = String.valueOf("admob__");
                String valueOf2 = String.valueOf(str);
                concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
            this.f17470d = C3650yg.f17642a.mo10768a(new Runnable(this, context, concat) { // from class: com.google.android.gms.internal.ads.uy

                /* renamed from: a */
                private final C3561uz f17464a;

                /* renamed from: b */
                private final Context f17465b;

                /* renamed from: c */
                private final String f17466c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17464a = this;
                    this.f17465b = context;
                    this.f17466c = concat;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f17464a.m7049a(this.f17465b, this.f17466c);
                }
            });
            this.f17468b = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final void mo7036a(Runnable runnable) {
        this.f17469c.add(runnable);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final void mo7035a(String str) {
        m7046o();
        synchronized (this.f17467a) {
            if (str != null) {
                if (!str.equals(this.f17476j)) {
                    this.f17476j = str;
                    if (this.f17473g != null) {
                        this.f17473g.putString("content_url_hashes", str);
                        this.f17473g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_url_hashes", str);
                    m7047a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final void mo7034a(String str, String str2, boolean z) {
        m7046o();
        synchronized (this.f17467a) {
            JSONArray optJSONArray = this.f17486t.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    return;
                }
                if (str2.equals(optJSONObject.optString("template_id"))) {
                    length = i;
                    if (z) {
                        length = i;
                        if (optJSONObject.optBoolean("uses_media_view", false)) {
                            return;
                        }
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", C2341q.m14737j().mo13862a());
                optJSONArray.put(length, jSONObject);
                this.f17486t.put(str, optJSONArray);
            } catch (JSONException e) {
                C3556uu.m6746d("Could not update native advanced settings", e);
            }
            if (this.f17473g != null) {
                this.f17473g.putString("native_advanced_settings", this.f17486t.toString());
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", this.f17486t.toString());
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: a */
    public final void mo7033a(boolean z) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17487u == z) {
                return;
            }
            this.f17487u = z;
            if (this.f17473g != null) {
                this.f17473g.putBoolean("content_url_opted_out", z);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.f17487u);
            bundle.putBoolean("content_vertical_opted_out", this.f17488v);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: b */
    public final void mo7031b(int i) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17483q == i) {
                return;
            }
            this.f17483q = i;
            if (this.f17473g != null) {
                this.f17473g.putInt("request_in_session_count", i);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request_in_session_count", i);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: b */
    public final void mo7030b(long j) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17482p == j) {
                return;
            }
            this.f17482p = j;
            if (this.f17473g != null) {
                this.f17473g.putLong("first_ad_req_time_ms", j);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("first_ad_req_time_ms", j);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: b */
    public final void mo7029b(String str) {
        m7046o();
        synchronized (this.f17467a) {
            if (str != null) {
                if (!str.equals(this.f17477k)) {
                    this.f17477k = str;
                    if (this.f17473g != null) {
                        this.f17473g.putString("content_vertical_hashes", str);
                        this.f17473g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_vertical_hashes", str);
                    m7047a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: b */
    public final void mo7028b(boolean z) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17488v == z) {
                return;
            }
            this.f17488v = z;
            if (this.f17473g != null) {
                this.f17473g.putBoolean("content_vertical_opted_out", z);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.f17487u);
            bundle.putBoolean("content_vertical_opted_out", this.f17488v);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: b */
    public final boolean mo7032b() {
        boolean z;
        m7046o();
        synchronized (this.f17467a) {
            z = this.f17487u;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: c */
    public final String mo7027c() {
        String str;
        m7046o();
        synchronized (this.f17467a) {
            str = this.f17476j;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: c */
    public final void mo7026c(String str) {
        m7046o();
        synchronized (this.f17467a) {
            long mo13862a = C2341q.m14737j().mo13862a();
            this.f17480n = mo13862a;
            if (str == null || str.equals(this.f17479m)) {
                return;
            }
            this.f17479m = str;
            if (this.f17473g != null) {
                this.f17473g.putString("app_settings_json", str);
                this.f17473g.putLong("app_settings_last_update_ms", mo13862a);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("app_settings_json", str);
            bundle.putLong("app_settings_last_update_ms", mo13862a);
            m7047a(bundle);
            for (Runnable runnable : this.f17469c) {
                runnable.run();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: c */
    public final void mo7025c(boolean z) {
        m7046o();
        synchronized (this.f17467a) {
            if (this.f17478l == z) {
                return;
            }
            this.f17478l = z;
            if (this.f17473g != null) {
                this.f17473g.putBoolean("auto_collect_location", z);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", z);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: d */
    public final void mo7023d(String str) {
        m7046o();
        synchronized (this.f17467a) {
            if (TextUtils.equals(this.f17489w, str)) {
                return;
            }
            this.f17489w = str;
            if (this.f17473g != null) {
                this.f17473g.putString("display_cutout", str);
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("display_cutout", str);
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: d */
    public final boolean mo7024d() {
        boolean z;
        m7046o();
        synchronized (this.f17467a) {
            z = this.f17488v;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: e */
    public final String mo7022e() {
        String str;
        m7046o();
        synchronized (this.f17467a) {
            str = this.f17477k;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: f */
    public final boolean mo7021f() {
        boolean z;
        m7046o();
        synchronized (this.f17467a) {
            z = this.f17478l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: g */
    public final int mo7020g() {
        int i;
        m7046o();
        synchronized (this.f17467a) {
            i = this.f17484r;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: h */
    public final C3543uh mo7019h() {
        C3543uh c3543uh;
        m7046o();
        synchronized (this.f17467a) {
            c3543uh = new C3543uh(this.f17479m, this.f17480n);
        }
        return c3543uh;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: i */
    public final long mo7018i() {
        long j;
        m7046o();
        synchronized (this.f17467a) {
            j = this.f17481o;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: j */
    public final int mo7017j() {
        int i;
        m7046o();
        synchronized (this.f17467a) {
            i = this.f17483q;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: k */
    public final long mo7016k() {
        long j;
        m7046o();
        synchronized (this.f17467a) {
            j = this.f17482p;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: l */
    public final JSONObject mo7015l() {
        JSONObject jSONObject;
        m7046o();
        synchronized (this.f17467a) {
            jSONObject = this.f17486t;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: m */
    public final void mo7014m() {
        m7046o();
        synchronized (this.f17467a) {
            this.f17486t = new JSONObject();
            if (this.f17473g != null) {
                this.f17473g.remove("native_advanced_settings");
                this.f17473g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            m7047a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3558uw
    /* renamed from: n */
    public final String mo7013n() {
        String str;
        m7046o();
        synchronized (this.f17467a) {
            str = this.f17489w;
        }
        return str;
    }
}
