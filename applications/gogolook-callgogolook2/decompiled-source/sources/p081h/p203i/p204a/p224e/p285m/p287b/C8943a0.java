package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* renamed from: h.i.a.e.m.b.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/a0.class */
public final class C8943a0 extends AbstractC9035p1 {

    /* renamed from: w */
    public static final Pair<String, Long> f20197w = new Pair<>("", 0L);

    /* renamed from: c */
    public SharedPreferences f20198c;

    /* renamed from: d */
    public C8968e0 f20199d;

    /* renamed from: m */
    public String f20208m;

    /* renamed from: n */
    public boolean f20209n;

    /* renamed from: o */
    public long f20210o;

    /* renamed from: v */
    public boolean f20217v;

    /* renamed from: e */
    public final C8961d0 f20200e = new C8961d0(this, "last_upload", 0);

    /* renamed from: f */
    public final C8961d0 f20201f = new C8961d0(this, "last_upload_attempt", 0);

    /* renamed from: g */
    public final C8961d0 f20202g = new C8961d0(this, "backoff", 0);

    /* renamed from: h */
    public final C8961d0 f20203h = new C8961d0(this, "last_delete_stale", 0);

    /* renamed from: p */
    public final C8961d0 f20211p = new C8961d0(this, "time_before_start", 10000);

    /* renamed from: q */
    public final C8961d0 f20212q = new C8961d0(this, "session_timeout", 1800000);

    /* renamed from: r */
    public final C8955c0 f20213r = new C8955c0(this, "start_new_session", true);

    /* renamed from: s */
    public final C8974f0 f20214s = new C8974f0(this, "allow_ad_personalization", null);

    /* renamed from: t */
    public final C8961d0 f20215t = new C8961d0(this, "last_pause_time", 0);

    /* renamed from: u */
    public final C8961d0 f20216u = new C8961d0(this, "time_active", 0);

    /* renamed from: i */
    public final C8961d0 f20204i = new C8961d0(this, "midnight_offset", 0);

    /* renamed from: j */
    public final C8961d0 f20205j = new C8961d0(this, "first_open_time", 0);

    /* renamed from: k */
    public final C8961d0 f20206k = new C8961d0(this, "app_install_time", 0);

    /* renamed from: l */
    public final C8974f0 f20207l = new C8974f0(this, "app_instance_id", null);

    public C8943a0(C9052s0 s0Var) {
        super(s0Var);
    }

    @NonNull
    @WorkerThread
    /* renamed from: a */
    public final Pair<String, Boolean> m16761a(String str) {
        mo16328d();
        long elapsedRealtime = mo16174e().elapsedRealtime();
        String str2 = this.f20208m;
        if (str2 != null && elapsedRealtime < this.f20210o) {
            return new Pair<>(str2, Boolean.valueOf(this.f20209n));
        }
        this.f20210o = elapsedRealtime + m16349l().m16507a(str, C8966e.f20322l);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
            if (advertisingIdInfo != null) {
                this.f20208m = advertisingIdInfo.getId();
                this.f20209n = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.f20208m == null) {
                this.f20208m = "";
            }
        } catch (Exception e) {
            mo16178c().m16368z().m16337a("Unable to get advertising id", e);
            this.f20208m = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.f20208m, Boolean.valueOf(this.f20209n));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16760a(boolean z) {
        mo16328d();
        mo16178c().m16389A().m16337a("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m16753s().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: b */
    public final String m16759b(String str) {
        mo16328d();
        String str2 = (String) m16761a(str).first;
        MessageDigest w = C8959c4.m16697w();
        if (w == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, w.digest(str2.getBytes())));
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16758b(boolean z) {
        mo16328d();
        mo16178c().m16389A().m16337a("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m16753s().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: c */
    public final void m16757c(String str) {
        mo16328d();
        SharedPreferences.Editor edit = m16753s().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: c */
    public final boolean m16756c(boolean z) {
        mo16328d();
        return m16753s().getBoolean("measurement_enabled", z);
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16755d(String str) {
        mo16328d();
        SharedPreferences.Editor edit = m16753s().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16754d(boolean z) {
        mo16328d();
        mo16178c().m16389A().m16337a("Updating deferred analytics collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m16753s().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    /* renamed from: p */
    public final boolean mo16126p() {
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    @WorkerThread
    /* renamed from: q */
    public final void mo16340q() {
        this.f20198c = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f20217v = this.f20198c.getBoolean("has_been_opened", false);
        if (!this.f20217v) {
            SharedPreferences.Editor edit = this.f20198c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f20199d = new C8968e0(this, "health_monitor", Math.max(0L, C8966e.f20323m.m16678a().longValue()));
    }

    @WorkerThread
    /* renamed from: s */
    public final SharedPreferences m16753s() {
        mo16328d();
        m16342n();
        return this.f20198c;
    }

    @WorkerThread
    /* renamed from: t */
    public final String m16752t() {
        mo16328d();
        return m16753s().getString("gmp_app_id", null);
    }

    @WorkerThread
    /* renamed from: u */
    public final String m16751u() {
        mo16328d();
        return m16753s().getString("admob_app_id", null);
    }

    @WorkerThread
    /* renamed from: v */
    public final Boolean m16750v() {
        mo16328d();
        if (!m16753s().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(m16753s().getBoolean("use_service", false));
    }

    @WorkerThread
    /* renamed from: w */
    public final void m16749w() {
        mo16328d();
        mo16178c().m16389A().m16338a("Clearing collection preferences.");
        boolean contains = m16753s().contains("measurement_enabled");
        boolean z = true;
        if (contains) {
            z = m16756c(true);
        }
        SharedPreferences.Editor edit = m16753s().edit();
        edit.clear();
        edit.apply();
        if (contains) {
            m16760a(z);
        }
    }

    @WorkerThread
    /* renamed from: x */
    public final String m16748x() {
        mo16328d();
        String string = m16753s().getString("previous_os_version", null);
        m16353h().m16342n();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = m16753s().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    @WorkerThread
    /* renamed from: y */
    public final boolean m16747y() {
        mo16328d();
        return m16753s().getBoolean("deferred_analytics_collection", false);
    }

    @WorkerThread
    /* renamed from: z */
    public final boolean m16746z() {
        return this.f20198c.contains("deferred_analytics_collection");
    }
}
