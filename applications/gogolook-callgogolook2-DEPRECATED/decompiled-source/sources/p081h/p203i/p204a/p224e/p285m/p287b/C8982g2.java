package p081h.p203i.p204a.p224e.p285m.p287b;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.a.e.m.b.g2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/g2.class */
public final class C8982g2 extends AbstractC9055s3 {

    /* renamed from: c */
    public C8976f2 f20402c;

    /* renamed from: d */
    public volatile C8976f2 f20403d;

    /* renamed from: e */
    public C8976f2 f20404e;

    /* renamed from: f */
    public final Map<Activity, C8976f2> f20405f = new ArrayMap();

    /* renamed from: g */
    public String f20406g;

    public C8982g2(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: a */
    public static String m16592a(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        String str3 = str2;
        if (str2.length() > 100) {
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    /* renamed from: a */
    public static void m16594a(C8976f2 f2Var, Bundle bundle, boolean z) {
        if (bundle != null && f2Var != null && (!bundle.containsKey("_sc") || z)) {
            String str = f2Var.f20362a;
            if (str != null) {
                bundle.putString("_sn", str);
            } else {
                bundle.remove("_sn");
            }
            bundle.putString("_sc", f2Var.f20363b);
            bundle.putLong("_si", f2Var.f20364c);
        } else if (bundle != null && f2Var == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    @WorkerThread
    /* renamed from: A */
    public final C8976f2 m16601A() {
        m16226v();
        mo16328d();
        return this.f20402c;
    }

    /* renamed from: B */
    public final C8976f2 m16600B() {
        mo16327f();
        return this.f20403d;
    }

    @MainThread
    /* renamed from: a */
    public final void m16599a(Activity activity) {
        this.f20405f.remove(activity);
    }

    @MainThread
    /* renamed from: a */
    public final void m16598a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.f20405f.put(activity, new C8976f2(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
        }
    }

    @MainThread
    /* renamed from: a */
    public final void m16597a(Activity activity, C8976f2 f2Var, boolean z) {
        C8976f2 f2Var2 = this.f20403d == null ? this.f20404e : this.f20403d;
        C8976f2 f2Var3 = f2Var;
        if (f2Var.f20363b == null) {
            f2Var3 = new C8976f2(f2Var.f20362a, m16592a(activity.getClass().getCanonicalName()), f2Var.f20364c);
        }
        this.f20404e = this.f20403d;
        this.f20403d = f2Var3;
        mo16214a().m16364a(new RunnableC8988h2(this, z, f2Var2, f2Var3));
    }

    /* renamed from: a */
    public final void m16596a(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        if (this.f20403d == null) {
            mo16178c().m16372v().m16338a("setCurrentScreen cannot be called while no activity active");
        } else if (this.f20405f.get(activity) == null) {
            mo16178c().m16372v().m16338a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = m16592a(activity.getClass().getCanonicalName());
            }
            boolean equals = this.f20403d.f20363b.equals(str3);
            boolean e = C8959c4.m16705e(this.f20403d.f20362a, str);
            if (equals && e) {
                mo16178c().m16370x().m16338a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                mo16178c().m16372v().m16337a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 == null || (str3.length() > 0 && str3.length() <= 100)) {
                mo16178c().m16389A().m16336a("Setting current screen to name, class", str == null ? C14247d.f31851f : str, str3);
                C8976f2 f2Var = new C8976f2(str, str3, m16351j().m16701s());
                this.f20405f.put(activity, f2Var);
                m16597a(activity, f2Var, true);
            } else {
                mo16178c().m16372v().m16337a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16595a(@NonNull C8976f2 f2Var) {
        m16324n().m16773a(mo16174e().elapsedRealtime());
        if (m16318t().m16556a(f2Var.f20365d)) {
            f2Var.f20365d = false;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16591a(String str, C8976f2 f2Var) {
        mo16328d();
        synchronized (this) {
            if (this.f20406g == null || this.f20406g.equals(str) || f2Var != null) {
                this.f20406g = str;
            }
        }
    }

    @MainThread
    /* renamed from: b */
    public final void m16590b(Activity activity) {
        C8976f2 d = m16587d(activity);
        this.f20404e = this.f20403d;
        this.f20403d = null;
        mo16214a().m16364a(new RunnableC8994i2(this, d));
    }

    @MainThread
    /* renamed from: b */
    public final void m16589b(Activity activity, Bundle bundle) {
        C8976f2 f2Var;
        if (bundle != null && (f2Var = this.f20405f.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("id", f2Var.f20364c);
            bundle2.putString("name", f2Var.f20362a);
            bundle2.putString("referrer_name", f2Var.f20363b);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    @MainThread
    /* renamed from: c */
    public final void m16588c(Activity activity) {
        m16597a(activity, m16587d(activity), false);
        C8942a n = m16324n();
        n.mo16214a().m16364a(new RunnableC9089y1(n, n.mo16174e().elapsedRealtime()));
    }

    @MainThread
    /* renamed from: d */
    public final C8976f2 m16587d(@NonNull Activity activity) {
        C7021t.m21290a(activity);
        C8976f2 f2Var = this.f20405f.get(activity);
        C8976f2 f2Var2 = f2Var;
        if (f2Var == null) {
            f2Var2 = new C8976f2(null, m16592a(activity.getClass().getCanonicalName()), m16351j().m16701s());
            this.f20405f.put(activity, f2Var2);
        }
        return f2Var2;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: x */
    public final boolean mo16224x() {
        return false;
    }
}
