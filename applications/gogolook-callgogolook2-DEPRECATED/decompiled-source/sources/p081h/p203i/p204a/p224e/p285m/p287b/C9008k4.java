package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import java.lang.reflect.InvocationTargetException;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7084p;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
import p081h.p203i.p204a.p224e.p285m.p287b.C8966e;
/* renamed from: h.i.a.e.m.b.k4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/k4.class */
public final class C9008k4 extends C9029o1 {

    /* renamed from: b */
    public Boolean f20467b;
    @NonNull

    /* renamed from: c */
    public AbstractC9020m4 f20468c = C9014l4.f20484a;

    /* renamed from: d */
    public Boolean f20469d;

    public C9008k4(C9052s0 s0Var) {
        super(s0Var);
        C8966e.m16680a(s0Var);
    }

    /* renamed from: s */
    public static String m16483s() {
        return C8966e.f20321k.m16678a();
    }

    /* renamed from: t */
    public static long m16482t() {
        return C8966e.f20288N.m16678a().longValue();
    }

    /* renamed from: u */
    public static long m16481u() {
        return C8966e.f20324n.m16678a().longValue();
    }

    /* renamed from: v */
    public static boolean m16480v() {
        return C8966e.f20319j.m16678a().booleanValue();
    }

    /* renamed from: w */
    public static boolean m16479w() {
        return C8966e.f20308d0.m16678a().booleanValue();
    }

    @WorkerThread
    /* renamed from: x */
    public static boolean m16478x() {
        return C8966e.f20312f0.m16678a().booleanValue();
    }

    @WorkerThread
    /* renamed from: a */
    public final int m16508a(@Size(min = 1) String str) {
        return m16505b(str, C8966e.f20335y);
    }

    @WorkerThread
    /* renamed from: a */
    public final long m16507a(String str, @NonNull C8966e.C8967a<Long> aVar) {
        if (str == null) {
            return aVar.m16678a().longValue();
        }
        String a = this.f20468c.mo16463a(str, aVar.m16671b());
        if (TextUtils.isEmpty(a)) {
            return aVar.m16678a().longValue();
        }
        try {
            return aVar.m16677a(Long.valueOf(Long.parseLong(a))).longValue();
        } catch (NumberFormatException e) {
            return aVar.m16678a().longValue();
        }
    }

    /* renamed from: a */
    public final void m16509a(@NonNull AbstractC9020m4 m4Var) {
        this.f20468c = m4Var;
    }

    /* renamed from: a */
    public final boolean m16510a(C8966e.C8967a<Boolean> aVar) {
        return m16503c(null, aVar);
    }

    @WorkerThread
    /* renamed from: b */
    public final int m16505b(String str, @NonNull C8966e.C8967a<Integer> aVar) {
        if (str == null) {
            return aVar.m16678a().intValue();
        }
        String a = this.f20468c.mo16463a(str, aVar.m16671b());
        if (TextUtils.isEmpty(a)) {
            return aVar.m16678a().intValue();
        }
        try {
            return aVar.m16677a(Integer.valueOf(Integer.parseInt(a))).intValue();
        } catch (NumberFormatException e) {
            return aVar.m16678a().intValue();
        }
    }

    @Nullable
    /* renamed from: b */
    public final Boolean m16506b(@Size(min = 1) String str) {
        C7021t.m21283b(str);
        try {
            if (getContext().getPackageManager() == null) {
                mo16178c().m16375s().m16338a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo a = C7097c.m21085b(getContext()).m21091a(getContext().getPackageName(), 128);
            if (a == null) {
                mo16178c().m16375s().m16338a("Failed to load metadata: ApplicationInfo is null");
                return null;
            } else if (a.metaData == null) {
                mo16178c().m16375s().m16338a("Failed to load metadata: Metadata bundle is null");
                return null;
            } else if (!a.metaData.containsKey(str)) {
                return null;
            } else {
                return Boolean.valueOf(a.metaData.getBoolean(str));
            }
        } catch (PackageManager.NameNotFoundException e) {
            mo16178c().m16375s().m16337a("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* renamed from: c */
    public final boolean m16504c(String str) {
        return "1".equals(this.f20468c.mo16463a(str, "gaia_collection_enabled"));
    }

    @WorkerThread
    /* renamed from: c */
    public final boolean m16503c(String str, @NonNull C8966e.C8967a<Boolean> aVar) {
        if (str == null) {
            return aVar.m16678a().booleanValue();
        }
        String a = this.f20468c.mo16463a(str, aVar.m16671b());
        return TextUtils.isEmpty(a) ? aVar.m16678a().booleanValue() : aVar.m16677a(Boolean.valueOf(Boolean.parseBoolean(a))).booleanValue();
    }

    /* renamed from: d */
    public final boolean m16502d(String str) {
        return "1".equals(this.f20468c.mo16463a(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: d */
    public final boolean m16501d(String str, C8966e.C8967a<Boolean> aVar) {
        return m16503c(str, aVar);
    }

    @WorkerThread
    /* renamed from: e */
    public final boolean m16500e(String str) {
        return m16503c(str, C8966e.f20292R);
    }

    @WorkerThread
    /* renamed from: f */
    public final boolean m16499f(String str) {
        return m16503c(str, C8966e.f20294T);
    }

    @WorkerThread
    /* renamed from: g */
    public final boolean m16498g(String str) {
        return m16503c(str, C8966e.f20295U);
    }

    /* renamed from: h */
    public final boolean m16497h(String str) {
        return m16503c(str, C8966e.f20296V);
    }

    @WorkerThread
    /* renamed from: i */
    public final boolean m16496i(String str) {
        return m16503c(str, C8966e.f20297W);
    }

    @WorkerThread
    /* renamed from: j */
    public final boolean m16495j(String str) {
        return m16503c(str, C8966e.f20300Z);
    }

    @WorkerThread
    /* renamed from: k */
    public final boolean m16494k(String str) {
        return m16503c(str, C8966e.f20302a0);
    }

    @WorkerThread
    /* renamed from: l */
    public final boolean m16493l(String str) {
        return m16503c(str, C8966e.f20306c0);
    }

    /* renamed from: m */
    public final boolean m16492m() {
        if (this.f20469d == null) {
            synchronized (this) {
                if (this.f20469d == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String a = C7084p.m21120a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f20469d = Boolean.valueOf(str != null && str.equals(a));
                    }
                    if (this.f20469d == null) {
                        this.f20469d = Boolean.TRUE;
                        mo16178c().m16375s().m16338a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f20469d.booleanValue();
    }

    @WorkerThread
    /* renamed from: m */
    public final boolean m16491m(String str) {
        return m16503c(str, C8966e.f20304b0);
    }

    /* renamed from: n */
    public final long m16490n() {
        mo16187b();
        return 13001L;
    }

    @WorkerThread
    /* renamed from: n */
    public final boolean m16489n(String str) {
        return m16503c(str, C8966e.f20314g0);
    }

    /* renamed from: o */
    public final boolean m16488o() {
        mo16187b();
        Boolean b = m16506b("firebase_analytics_collection_deactivated");
        return b != null && b.booleanValue();
    }

    @WorkerThread
    /* renamed from: o */
    public final boolean m16487o(String str) {
        return m16503c(str, C8966e.f20316h0);
    }

    /* renamed from: p */
    public final Boolean m16486p() {
        mo16187b();
        return m16506b("firebase_analytics_collection_enabled");
    }

    /* renamed from: q */
    public final String m16485q() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e) {
            mo16178c().m16375s().m16337a("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            mo16178c().m16375s().m16337a("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            mo16178c().m16375s().m16337a("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            mo16178c().m16375s().m16337a("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    @WorkerThread
    /* renamed from: r */
    public final boolean m16484r() {
        if (this.f20467b == null) {
            this.f20467b = m16506b("app_measurement_lite");
            if (this.f20467b == null) {
                this.f20467b = false;
            }
        }
        return this.f20467b.booleanValue() || !this.f20541a.m16303D();
    }
}
