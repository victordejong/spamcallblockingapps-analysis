package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6228f;
import com.google.android.gms.common.util.C6241s;
import com.google.android.gms.internal.measurement.C7382g9;
import com.google.android.gms.internal.measurement.C7466m9;
import com.google.android.gms.internal.measurement.C7626y9;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.measurement.internal.v6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/v6.class */
public final class C7893v6 extends AbstractC7673c4 {

    /* renamed from: c */
    protected C7882u6 f35747c;

    /* renamed from: d */
    private AbstractC7870t5 f35748d;

    /* renamed from: f */
    private boolean f35750f;

    /* renamed from: n */
    final C7679ca f35758n;

    /* renamed from: e */
    private final Set<AbstractC7881u5> f35749e = new CopyOnWriteArraySet();

    /* renamed from: h */
    private final Object f35752h = new Object();

    /* renamed from: o */
    protected boolean f35759o = true;

    /* renamed from: p */
    private final AbstractC7874t9 f35760p = new C7771k6(this);

    /* renamed from: g */
    private final AtomicReference<String> f35751g = new AtomicReference<>();

    /* renamed from: i */
    private C7704f f35753i = new C7704f(null, null);

    /* renamed from: j */
    private int f35754j = 100;

    /* renamed from: l */
    private long f35756l = -1;

    /* renamed from: m */
    private int f35757m = 100;

    /* renamed from: k */
    private final AtomicLong f35755k = new AtomicLong(0);

    public C7893v6(C7858s4 c7858s4) {
        super(c7858s4);
        this.f35758n = new C7679ca(c7858s4);
    }

    /* renamed from: J */
    public static /* synthetic */ void m5931J(C7893v6 c7893v6, C7704f c7704f, int i, long j, boolean z, boolean z2) {
        c7893v6.mo6113f();
        c7893v6.m6572h();
        if (j <= c7893v6.f35756l && C7704f.m6438m(c7893v6.f35757m, i)) {
            c7893v6.f35460a.mo6047C().m6189s().m6215b("Dropped out-of-date consent setting, proposed settings", c7704f);
            return;
        }
        C7697e4 m6005z = c7893v6.f35460a.m6005z();
        C7382g9.m7385a();
        if (m6005z.f35460a.m6006y().m6471u(null, C7672c3.f35107w0)) {
            m6005z.mo6113f();
            if (m6005z.m6461q(i)) {
                SharedPreferences.Editor edit = m6005z.m6464n().edit();
                edit.putString("consent_settings", c7704f.m6447d());
                edit.putInt("consent_source", i);
                edit.apply();
                c7893v6.f35756l = j;
                c7893v6.f35757m = i;
                c7893v6.f35460a.m6032R().m6283J(z);
                if (!z2) {
                    return;
                }
                c7893v6.f35460a.m6032R().m6273T(new AtomicReference<>());
                return;
            }
        }
        c7893v6.f35460a.mo6047C().m6189s().m6215b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
    }

    /* renamed from: L */
    public final void m5929L(Boolean bool, boolean z) {
        mo6113f();
        m6572h();
        this.f35460a.mo6047C().m6188t().m6215b("Setting app measurement enabled (FE)", bool);
        this.f35460a.m6005z().m6463o(bool);
        C7382g9.m7385a();
        C7692e m6006y = this.f35460a.m6006y();
        C7648a3<Boolean> c7648a3 = C7672c3.f35107w0;
        if (m6006y.m6471u(null, c7648a3) && z) {
            C7697e4 m6005z = this.f35460a.m6005z();
            C7382g9.m7385a();
            if (m6005z.f35460a.m6006y().m6471u(null, c7648a3)) {
                m6005z.mo6113f();
                SharedPreferences.Editor edit = m6005z.m6464n().edit();
                if (bool != null) {
                    edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
                } else {
                    edit.remove("measurement_enabled_from_api");
                }
                edit.apply();
            }
        }
        C7382g9.m7385a();
        if (!this.f35460a.m6006y().m6471u(null, c7648a3) || this.f35460a.m6019l() || (bool != null && !bool.booleanValue())) {
            m5928M();
        }
    }

    /* renamed from: M */
    public final void m5928M() {
        mo6113f();
        String m6558a = this.f35460a.m6005z().f35204n.m6558a();
        if (m6558a != null) {
            if ("unset".equals(m6558a)) {
                m5909n("app", "_npa", null, this.f35460a.mo6007x().mo16807a());
            } else {
                m5909n("app", "_npa", Long.valueOf((true != "true".equals(m6558a) ? null : 1) == 1 ? 1L : 0L), this.f35460a.mo6007x().mo16807a());
            }
        }
        if (!this.f35460a.m6022i() || !this.f35759o) {
            this.f35460a.mo6047C().m6188t().m6216a("Updating Scion state (FE)");
            this.f35460a.m6032R().m6284I();
            return;
        }
        this.f35460a.mo6047C().m6188t().m6216a("Recording app launch after enabling measurement for the first time (FE)");
        m5904s();
        C7626y9.m6717a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35093p0)) {
            this.f35460a.m6048B().f35855d.m5883a();
        }
        this.f35460a.mo6029b().m6109p(new RunnableC7936z5(this));
    }

    /* renamed from: A */
    public final void m5939A(String str, String str2, Bundle bundle) {
        long mo16807a = this.f35460a.mo6007x().mo16807a();
        C6155o.m17022f(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(ShortCut.NAME, str);
        bundle2.putLong("creation_timestamp", mo16807a);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.f35460a.mo6029b().m6109p(new RunnableC7723g6(this, bundle2));
    }

    /* renamed from: B */
    public final ArrayList<Bundle> m5938B(String str, String str2) {
        ArrayList<Bundle> arrayList;
        if (this.f35460a.mo6029b().m6112m()) {
            this.f35460a.mo6047C().m6195m().m6216a("Cannot get conditional user properties from analytics worker thread");
            arrayList = new ArrayList<>(0);
        } else {
            this.f35460a.mo6028c();
            if (C7775ka.m6256a()) {
                this.f35460a.mo6047C().m6195m().m6216a("Cannot get conditional user properties from main thread");
                arrayList = new ArrayList<>(0);
            } else {
                AtomicReference atomicReference = new AtomicReference();
                this.f35460a.mo6029b().m6108q(atomicReference, 5000L, "get conditional user properties", new RunnableC7747i6(this, atomicReference, null, str, str2));
                List list = (List) atomicReference.get();
                if (list == null) {
                    this.f35460a.mo6047C().m6195m().m6215b("Timed out waiting for get conditional user properties", null);
                    arrayList = new ArrayList<>();
                } else {
                    arrayList = C7885u9.m5977Y(list);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: D */
    public final Map<String, Object> m5937D(String str, String str2, boolean z) {
        C1489a c1489a;
        if (this.f35460a.mo6029b().m6112m()) {
            this.f35460a.mo6047C().m6195m().m6216a("Cannot get user properties from analytics worker thread");
            c1489a = Collections.emptyMap();
        } else {
            this.f35460a.mo6028c();
            if (C7775ka.m6256a()) {
                this.f35460a.mo6047C().m6195m().m6216a("Cannot get user properties from main thread");
                c1489a = Collections.emptyMap();
            } else {
                AtomicReference atomicReference = new AtomicReference();
                this.f35460a.mo6029b().m6108q(atomicReference, 5000L, "get user properties", new RunnableC7759j6(this, atomicReference, null, str, str2, z));
                List<zzkl> list = (List) atomicReference.get();
                if (list == null) {
                    this.f35460a.mo6047C().m6195m().m6215b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                    c1489a = Collections.emptyMap();
                } else {
                    c1489a = new C1489a(list.size());
                    for (zzkl zzklVar : list) {
                        Object m5862k0 = zzklVar.m5862k0();
                        if (m5862k0 != null) {
                            c1489a.put(zzklVar.f35877e, m5862k0);
                        }
                    }
                }
            }
        }
        return c1489a;
    }

    /* renamed from: E */
    public final String m5936E() {
        C7676c7 m6296u = this.f35460a.m6033Q().m6296u();
        if (m6296u != null) {
            return m6296u.f35122a;
        }
        return null;
    }

    /* renamed from: F */
    public final String m5935F() {
        C7676c7 m6296u = this.f35460a.m6033Q().m6296u();
        if (m6296u != null) {
            return m6296u.f35123b;
        }
        return null;
    }

    /* renamed from: G */
    public final String m5934G() {
        if (this.f35460a.m6038L() == null) {
            try {
                return C7664b7.m6578a(this.f35460a.mo6030a(), "google_app_id", this.f35460a.m6034P());
            } catch (IllegalStateException e) {
                this.f35460a.mo6047C().m6195m().m6215b("getGoogleAppId failed with exception", e);
                return null;
            }
        }
        return this.f35460a.m6038L();
    }

    /* renamed from: H */
    public final /* synthetic */ void m5933H(Bundle bundle) {
        if (bundle == null) {
            this.f35460a.m6005z().f35214x.m5879b(new Bundle());
            return;
        }
        Bundle m5880a = this.f35460a.m6005z().f35214x.m5880a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.f35460a.m6043G().m5947t0(obj)) {
                    this.f35460a.m6043G().m5940z(this.f35760p, null, 27, null, null, 0, this.f35460a.m6006y().m6471u(null, C7672c3.f35031B0));
                }
                this.f35460a.mo6047C().m6190r().m6214c("Invalid default event parameter type. Name, value", str, obj);
            } else if (C7885u9.m5996F(str)) {
                this.f35460a.mo6047C().m6190r().m6215b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                m5880a.remove(str);
            } else {
                C7885u9 m6043G = this.f35460a.m6043G();
                this.f35460a.m6006y();
                if (m6043G.m5945u0("param", str, 100, obj)) {
                    this.f35460a.m6043G().m5941y(m5880a, str, obj);
                }
            }
        }
        this.f35460a.m6043G();
        int m6481k = this.f35460a.m6006y().m6481k();
        if (m5880a.size() > m6481k) {
            int i = 0;
            for (String str2 : new TreeSet(m5880a.keySet())) {
                int i2 = i + 1;
                i = i2;
                if (i2 > m6481k) {
                    m5880a.remove(str2);
                    i = i2;
                }
            }
            this.f35460a.m6043G().m5940z(this.f35760p, null, 26, null, null, 0, this.f35460a.m6006y().m6471u(null, C7672c3.f35031B0));
            this.f35460a.mo6047C().m6190r().m6216a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.f35460a.m6005z().f35214x.m5879b(m5880a);
        this.f35460a.m6032R().m6269m(m5880a);
    }

    /* renamed from: N */
    public final void m5927N() {
        if (!(this.f35460a.mo6030a().getApplicationContext() instanceof Application) || this.f35747c == null) {
            return;
        }
        ((Application) this.f35460a.mo6030a().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f35747c);
    }

    /* renamed from: O */
    public final Boolean m5926O() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f35460a.mo6029b().m6108q(atomicReference, 15000L, "boolean test flag value", new RunnableC7735h6(this, atomicReference));
    }

    /* renamed from: P */
    public final String m5925P() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f35460a.mo6029b().m6108q(atomicReference, 15000L, "String test flag value", new RunnableC7783l6(this, atomicReference));
    }

    /* renamed from: Q */
    public final Long m5924Q() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f35460a.mo6029b().m6108q(atomicReference, 15000L, "long test flag value", new RunnableC7794m6(this, atomicReference));
    }

    /* renamed from: R */
    public final Integer m5923R() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f35460a.mo6029b().m6108q(atomicReference, 15000L, "int test flag value", new RunnableC7805n6(this, atomicReference));
    }

    /* renamed from: S */
    public final Double m5922S() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f35460a.mo6029b().m6108q(atomicReference, 15000L, "double test flag value", new RunnableC7816o6(this, atomicReference));
    }

    /* renamed from: T */
    public final void m5921T(Boolean bool) {
        m6572h();
        this.f35460a.mo6029b().m6109p(new RunnableC7827p6(this, bool));
    }

    /* renamed from: U */
    public final void m5920U(Bundle bundle, int i, long j) {
        C7382g9.m7385a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35107w0)) {
            m6572h();
            String m6450a = C7704f.m6450a(bundle);
            if (m6450a != null) {
                this.f35460a.mo6047C().m6190r().m6215b("Ignoring invalid consent setting", m6450a);
                this.f35460a.mo6047C().m6190r().m6216a("Valid consent values are 'granted', 'denied'");
            }
            m5919V(C7704f.m6449b(bundle), i, j);
        }
    }

    /* renamed from: V */
    public final void m5919V(C7704f c7704f, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        C7704f c7704f2 = c7704f;
        C7382g9.m7385a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35107w0)) {
            m6572h();
            C7692e m6006y = this.f35460a.m6006y();
            C7648a3<Boolean> c7648a3 = C7672c3.f35109x0;
            if (m6006y.m6471u(null, c7648a3) && i == -10) {
                i = -10;
            } else if (c7704f.m6446e() == null && c7704f.m6444g() == null) {
                this.f35460a.mo6047C().m6190r().m6216a("Discarding empty consent settings");
                return;
            }
            synchronized (this.f35752h) {
                z = true;
                z2 = false;
                if (C7704f.m6438m(i, this.f35754j)) {
                    z2 = c7704f2.m6442i(this.f35753i);
                    z3 = false;
                    if (c7704f.m6443h()) {
                        z3 = false;
                        if (!this.f35753i.m6443h()) {
                            z3 = true;
                        }
                    }
                    c7704f2 = c7704f2.m6439l(this.f35753i);
                    this.f35753i = c7704f2;
                    this.f35754j = i;
                } else {
                    z = false;
                    z3 = false;
                }
            }
            if (!z) {
                this.f35460a.mo6047C().m6189s().m6215b("Ignoring lower-priority consent settings, proposed settings", c7704f2);
                return;
            }
            long andIncrement = this.f35755k.getAndIncrement();
            if (z2) {
                this.f35751g.set(null);
                this.f35460a.mo6029b().m6107r(new RunnableC7838q6(this, c7704f2, j, i, andIncrement, z3));
                return;
            }
            if (this.f35460a.m6006y().m6471u(null, c7648a3)) {
                if (i != 30) {
                    if (i == -10) {
                        i = -10;
                    }
                }
                this.f35460a.mo6029b().m6107r(new RunnableC7849r6(this, c7704f2, i, andIncrement, z3));
                return;
            }
            this.f35460a.mo6029b().m6109p(new RunnableC7860s6(this, c7704f2, i, andIncrement, z3));
        }
    }

    /* renamed from: W */
    public final void m5918W(C7704f c7704f) {
        mo6113f();
        boolean z = (c7704f.m6443h() && c7704f.m6445f()) || this.f35460a.m6032R().m6262t();
        if (z != this.f35460a.m6019l()) {
            this.f35460a.m6020k(z);
            C7697e4 m6005z = this.f35460a.m6005z();
            C7382g9.m7385a();
            Boolean bool = null;
            if (m6005z.f35460a.m6006y().m6471u(null, C7672c3.f35107w0)) {
                m6005z.mo6113f();
                bool = null;
                if (m6005z.m6464n().contains("measurement_enabled_from_api")) {
                    bool = Boolean.valueOf(m6005z.m6464n().getBoolean("measurement_enabled_from_api", true));
                }
            }
            if (z && bool != null && !bool.booleanValue()) {
                return;
            }
            m5929L(Boolean.valueOf(z), false);
        }
    }

    /* renamed from: X */
    public final void m5917X(String str, String str2, Bundle bundle) {
        m5914a0(str, str2, bundle, true, true, this.f35460a.mo6007x().mo16807a());
    }

    /* renamed from: Y */
    public final void m5916Y(String str, String str2, long j, Bundle bundle) {
        mo6113f();
        m5915Z(str, str2, j, bundle, true, this.f35748d == null || C7885u9.m5996F(str2), false, null);
    }

    /* renamed from: Z */
    public final void m5915Z(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Bundle[] bundleArr;
        String str4;
        C6155o.m17022f(str);
        C6155o.m17018j(bundle);
        mo6113f();
        m6572h();
        if (!this.f35460a.m6022i()) {
            this.f35460a.mo6047C().m6188t().m6216a("Event not sent since app measurement is disabled");
            return;
        }
        List<String> m6424t = this.f35460a.m6027d().m6424t();
        if (m6424t != null && !m6424t.contains(str2)) {
            this.f35460a.mo6047C().m6188t().m6214c("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f35750f) {
            this.f35750f = true;
            try {
                try {
                    (!this.f35460a.m6035O() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.f35460a.mo6030a().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.f35460a.mo6030a());
                } catch (Exception e) {
                    this.f35460a.mo6047C().m6192p().m6215b("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException e2) {
                this.f35460a.mo6047C().m6189s().m6216a("Tag Manager is not found and thus will not be used");
            }
        }
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35069d0) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            this.f35460a.mo6028c();
            m5909n("auto", "_lgclid", bundle.getString("gclid"), this.f35460a.mo6007x().mo16807a());
        }
        this.f35460a.mo6028c();
        if (z && C7885u9.m5989M(str2)) {
            this.f35460a.m6043G().m5948t(bundle, this.f35460a.m6005z().f35214x.m5880a());
        }
        if (z3) {
            this.f35460a.mo6028c();
            if (!"_iap".equals(str2)) {
                C7885u9 m6043G = this.f35460a.m6043G();
                int i = 2;
                if (m6043G.m5963l0("event", str2)) {
                    if (!m6043G.m5959n0("event", C7837q5.f35593a, C7837q5.f35594b, str2)) {
                        i = 13;
                    } else {
                        m6043G.f35460a.m6006y();
                        if (m6043G.m5957o0("event", 40, str2)) {
                            i = 0;
                        }
                    }
                }
                if (i != 0) {
                    this.f35460a.mo6047C().m6193o().m6215b("Invalid public event name. Event will not be logged (FE)", this.f35460a.m6042H().m6345n(str2));
                    C7885u9 m6043G2 = this.f35460a.m6043G();
                    this.f35460a.m6006y();
                    String m5958o = m6043G2.m5958o(str2, 40, true);
                    int i2 = 0;
                    if (str2 != null) {
                        i2 = str2.length();
                    }
                    this.f35460a.m6043G().m5940z(this.f35760p, null, i, "_ev", m5958o, i2, this.f35460a.m6006y().m6471u(null, C7672c3.f35031B0));
                    return;
                }
            }
        }
        this.f35460a.mo6028c();
        C7676c7 m6300q = this.f35460a.m6033Q().m6300q(false);
        if (m6300q != null && !bundle.containsKey("_sc")) {
            m6300q.f35125d = true;
        }
        C7772k7.m6295v(m6300q, bundle, z && z3);
        boolean equals = "am".equals(str);
        boolean m5996F = C7885u9.m5996F(str2);
        if (!z || this.f35748d == null || m5996F) {
            z4 = equals;
        } else if (!equals) {
            this.f35460a.mo6047C().m6188t().m6214c("Passing event to registered event handler (FE)", this.f35460a.m6042H().m6345n(str2), this.f35460a.m6042H().m6342q(bundle));
            C6155o.m17018j(this.f35748d);
            this.f35748d.mo5870a(str, str2, bundle, j);
            return;
        } else {
            z4 = true;
        }
        if (!this.f35460a.m6016o()) {
            return;
        }
        int m5955p0 = this.f35460a.m6043G().m5955p0(str2);
        if (m5955p0 != 0) {
            this.f35460a.mo6047C().m6193o().m6215b("Invalid event name. Event will not be logged (FE)", this.f35460a.m6042H().m6345n(str2));
            C7885u9 m6043G3 = this.f35460a.m6043G();
            this.f35460a.m6006y();
            String m5958o2 = m6043G3.m5958o(str2, 40, true);
            int i3 = 0;
            if (str2 != null) {
                i3 = str2.length();
            }
            this.f35460a.m6043G().m5940z(this.f35760p, str3, m5955p0, "_ev", m5958o2, i3, this.f35460a.m6006y().m6471u(null, C7672c3.f35031B0));
            return;
        }
        Bundle m5952r = this.f35460a.m6043G().m5952r(str3, str2, bundle, C6228f.m16815c("_o", "_sn", "_sc", "_si"), z3);
        C6155o.m17018j(m5952r);
        if (m5952r.containsKey("_sc") && m5952r.containsKey("_si")) {
            new C7676c7(m5952r.getString("_sn"), m5952r.getString("_sc"), m5952r.getLong("_si"));
        }
        this.f35460a.mo6028c();
        if (this.f35460a.m6033Q().m6300q(false) != null && "_ae".equals(str2)) {
            C7917x8 c7917x8 = this.f35460a.m6048B().f35856e;
            long mo16806b = c7917x8.f35801d.f35460a.mo6007x().mo16806b();
            long j2 = mo16806b - c7917x8.f35799b;
            c7917x8.f35799b = mo16806b;
            if (j2 > 0) {
                this.f35460a.m6043G().m5985Q(m5952r, j2);
            }
        }
        C7466m9.m7102a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35091o0)) {
            if (!"auto".equals(str) && "_ssr".equals(str2)) {
                C7885u9 m6043G4 = this.f35460a.m6043G();
                String string = m5952r.getString("_ffr");
                if (C6241s.m16768a(string)) {
                    str4 = null;
                } else {
                    str4 = string;
                    if (string != null) {
                        str4 = string.trim();
                    }
                }
                if (C7885u9.m5995G(str4, m6043G4.f35460a.m6005z().f35211u.m6558a())) {
                    m6043G4.f35460a.mo6047C().m6188t().m6216a("Not logging duplicate session_start_with_rollout event");
                    return;
                }
                m6043G4.f35460a.m6005z().f35211u.m6557b(str4);
            } else if ("_ae".equals(str2)) {
                String m6558a = this.f35460a.m6043G().f35460a.m6005z().f35211u.m6558a();
                if (!TextUtils.isEmpty(m6558a)) {
                    m5952r.putString("_ffr", m6558a);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m5952r);
        if (this.f35460a.m6005z().f35206p.m6588a() > 0 && this.f35460a.m6005z().m6457u(j) && this.f35460a.m6005z().f35208r.m5887a()) {
            this.f35460a.mo6047C().m6187u().m6216a("Current session is expired, remove the session number, ID, and engagement time");
            m5909n("auto", "_sid", null, this.f35460a.mo6007x().mo16807a());
            m5909n("auto", "_sno", null, this.f35460a.mo6007x().mo16807a());
            m5909n("auto", "_se", null, this.f35460a.mo6007x().mo16807a());
        }
        if (m5952r.getLong("extend_session", 0L) == 1) {
            this.f35460a.mo6047C().m6187u().m6216a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
            this.f35460a.m6048B().f35855d.m5882b(j, true);
        }
        ArrayList arrayList2 = new ArrayList(m5952r.keySet());
        Collections.sort(arrayList2);
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str5 = (String) arrayList2.get(i4);
            if (str5 != null) {
                this.f35460a.m6043G();
                Object obj = m5952r.get(str5);
                if (obj instanceof Bundle) {
                    bundleArr = new Bundle[]{(Bundle) obj};
                } else if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList3 = (ArrayList) obj;
                    bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                } else {
                    bundleArr = null;
                }
                if (bundleArr != null) {
                    m5952r.putParcelableArray(str5, bundleArr);
                }
            }
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            Bundle bundle2 = (Bundle) arrayList.get(i5);
            String str6 = i5 != 0 ? "_ep" : str2;
            bundle2.putString("_o", str);
            Bundle bundle3 = bundle2;
            if (z2) {
                bundle3 = this.f35460a.m6043G().m5993I(bundle2);
            }
            this.f35460a.m6032R().m6281L(new zzas(str6, new zzaq(bundle3), str, j), str3);
            if (!z4) {
                for (AbstractC7881u5 abstractC7881u5 : this.f35749e) {
                    abstractC7881u5.mo2542a(str, str2, new Bundle(bundle3), j);
                }
            }
            i5++;
        }
        this.f35460a.mo6028c();
        if (this.f35460a.m6033Q().m6300q(false) == null || !"_ae".equals(str2)) {
            return;
        }
        this.f35460a.m6048B().f35856e.m5888d(true, true, this.f35460a.mo6007x().mo16806b());
    }

    /* renamed from: a0 */
    public final void m5914a0(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!this.f35460a.m6006y().m6471u(null, C7672c3.f35101t0) || !C7885u9.m5995G(str2, "screen_view")) {
            m5913b0(str, str2, j, bundle, z2, !z2 || this.f35748d == null || C7885u9.m5996F(str2), !z, null);
        } else {
            this.f35460a.m6033Q().m6298s(bundle, j);
        }
    }

    /* renamed from: b0 */
    public final void m5913b0(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
        }
        this.f35460a.mo6029b().m6109p(new RunnableC7663b6(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    /* renamed from: c0 */
    public final void m5912c0(String str, String str2, Object obj, boolean z) {
        m5911d0("auto", str2, obj, true, this.f35460a.mo6007x().mo16807a());
    }

    /* renamed from: d0 */
    public final void m5911d0(String str, String str2, Object obj, boolean z, long j) {
        int i;
        if (str == null) {
            str = "app";
        }
        if (z) {
            i = this.f35460a.m6043G().m5953q0(str2);
        } else {
            C7885u9 m6043G = this.f35460a.m6043G();
            if (m6043G.m5963l0("user property", str2)) {
                if (!m6043G.m5959n0("user property", C7859s5.f35669a, null, str2)) {
                    i = 15;
                } else {
                    m6043G.f35460a.m6006y();
                    if (m6043G.m5957o0("user property", 24, str2)) {
                        i = 0;
                    }
                }
            }
            i = 6;
        }
        if (i != 0) {
            C7885u9 m6043G2 = this.f35460a.m6043G();
            this.f35460a.m6006y();
            this.f35460a.m6043G().m5940z(this.f35760p, null, i, "_ev", m6043G2.m5958o(str2, 24, true), str2 != null ? str2.length() : 0, this.f35460a.m6006y().m6471u(null, C7672c3.f35031B0));
        } else if (obj == null) {
            m5910m(str, str2, j, null);
        } else {
            int m5944v = this.f35460a.m6043G().m5944v(str2, obj);
            if (m5944v != 0) {
                C7885u9 m6043G3 = this.f35460a.m6043G();
                this.f35460a.m6006y();
                this.f35460a.m6043G().m5940z(this.f35760p, null, m5944v, "_ev", m6043G3.m5958o(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0, this.f35460a.m6006y().m6471u(null, C7672c3.f35031B0));
                return;
            }
            Object m5942w = this.f35460a.m6043G().m5942w(str2, obj);
            if (m5942w == null) {
                return;
            }
            m5910m(str, str2, j, m5942w);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7673c4
    /* renamed from: k */
    protected final boolean mo5876k() {
        return false;
    }

    /* renamed from: m */
    final void m5910m(String str, String str2, long j, Object obj) {
        this.f35460a.mo6029b().m6109p(new RunnableC7675c6(this, str, str2, obj, j));
    }

    /* renamed from: n */
    public final void m5909n(String str, String str2, Object obj, long j) {
        Long l;
        C6155o.m17022f(str);
        C6155o.m17022f(str2);
        mo6113f();
        m6572h();
        Object obj2 = obj;
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String str4 = "false";
                    Long valueOf = Long.valueOf(true == "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    C7685d4 c7685d4 = this.f35460a.m6005z().f35204n;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    c7685d4.m6557b(str4);
                    l = valueOf;
                    str2 = "_npa";
                    obj2 = l;
                }
            }
            obj2 = obj;
            if (obj == null) {
                this.f35460a.m6005z().f35204n.m6557b("unset");
                l = obj;
                str2 = "_npa";
                obj2 = l;
            }
        }
        if (!this.f35460a.m6022i()) {
            this.f35460a.mo6047C().m6187u().m6216a("User property not set since app measurement is disabled");
        } else if (!this.f35460a.m6016o()) {
        } else {
            this.f35460a.m6032R().m6275R(new zzkl(str2, j, obj2, str));
        }
    }

    /* renamed from: o */
    public final String m5908o() {
        return this.f35751g.get();
    }

    /* renamed from: p */
    public final void m5907p(String str) {
        this.f35751g.set(str);
    }

    /* renamed from: q */
    public final void m5906q(long j) {
        this.f35751g.set(null);
        this.f35460a.mo6029b().m6109p(new RunnableC7699e6(this, j));
    }

    /* renamed from: r */
    public final void m5905r(long j, boolean z) {
        mo6113f();
        m6572h();
        this.f35460a.mo6047C().m6188t().m6216a("Resetting analytics data (FE)");
        C7939z8 m6048B = this.f35460a.m6048B();
        m6048B.mo6113f();
        m6048B.f35856e.m5889c();
        boolean m6022i = this.f35460a.m6022i();
        C7697e4 m6005z = this.f35460a.m6005z();
        m6005z.f35196f.m6587b(j);
        if (!TextUtils.isEmpty(m6005z.f35460a.m6005z().f35211u.m6558a())) {
            m6005z.f35211u.m6557b(null);
        }
        C7626y9.m6717a();
        C7692e m6006y = m6005z.f35460a.m6006y();
        C7648a3<Boolean> c7648a3 = C7672c3.f35093p0;
        if (m6006y.m6471u(null, c7648a3)) {
            m6005z.f35206p.m6587b(0L);
        }
        if (!m6005z.f35460a.m6006y().m6467z()) {
            m6005z.m6459s(!m6022i);
        }
        m6005z.f35212v.m6557b(null);
        m6005z.f35213w.m6587b(0L);
        m6005z.f35214x.m5879b(null);
        if (z) {
            this.f35460a.m6032R().m6274S();
        }
        C7626y9.m6717a();
        if (this.f35460a.m6006y().m6471u(null, c7648a3)) {
            this.f35460a.m6048B().f35855d.m5883a();
        }
        this.f35759o = !m6022i;
    }

    /* renamed from: s */
    public final void m5904s() {
        mo6113f();
        m6572h();
        if (this.f35460a.m6016o()) {
            if (this.f35460a.m6006y().m6471u(null, C7672c3.f35067c0)) {
                C7692e m6006y = this.f35460a.m6006y();
                m6006y.f35460a.mo6028c();
                Boolean m6469w = m6006y.m6469w("google_analytics_deferred_deep_link_enabled");
                if (m6469w != null && m6469w.booleanValue()) {
                    this.f35460a.mo6047C().m6188t().m6216a("Deferred Deep Link feature enabled.");
                    this.f35460a.mo6029b().m6109p(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.x5

                        /* renamed from: d */
                        private final C7893v6 f35790d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f35790d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            C7893v6 c7893v6 = this.f35790d;
                            c7893v6.mo6113f();
                            if (c7893v6.f35460a.m6005z().f35209s.m5887a()) {
                                c7893v6.f35460a.mo6047C().m6188t().m6216a("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long m6588a = c7893v6.f35460a.m6005z().f35210t.m6588a();
                            c7893v6.f35460a.m6005z().f35210t.m6587b(1 + m6588a);
                            c7893v6.f35460a.m6006y();
                            if (m6588a < 5) {
                                c7893v6.f35460a.m6015p();
                                return;
                            }
                            c7893v6.f35460a.mo6047C().m6192p().m6216a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                            c7893v6.f35460a.m6005z().f35209s.m5886b(true);
                        }
                    });
                }
            }
            this.f35460a.m6032R().m6271V();
            this.f35759o = false;
            C7697e4 m6005z = this.f35460a.m6005z();
            m6005z.mo6113f();
            String string = m6005z.m6464n().getString("previous_os_version", null);
            m6005z.f35460a.m6031S().m6209j();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = m6005z.m6464n().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.f35460a.m6031S().m6209j();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            m5917X("auto", "_ou", bundle);
        }
    }

    /* renamed from: t */
    public final void m5903t(AbstractC7870t5 abstractC7870t5) {
        AbstractC7870t5 abstractC7870t52;
        mo6113f();
        m6572h();
        if (abstractC7870t5 != null && abstractC7870t5 != (abstractC7870t52 = this.f35748d)) {
            C6155o.m17014n(abstractC7870t52 == null, "EventInterceptor already set.");
        }
        this.f35748d = abstractC7870t5;
    }

    /* renamed from: u */
    public final void m5902u(AbstractC7881u5 abstractC7881u5) {
        m6572h();
        C6155o.m17018j(abstractC7881u5);
        if (!this.f35749e.add(abstractC7881u5)) {
            this.f35460a.mo6047C().m6192p().m6216a("OnEventListener already registered");
        }
    }

    /* renamed from: v */
    public final void m5901v(AbstractC7881u5 abstractC7881u5) {
        m6572h();
        C6155o.m17018j(abstractC7881u5);
        if (!this.f35749e.remove(abstractC7881u5)) {
            this.f35460a.mo6047C().m6192p().m6216a("OnEventListener had not been registered");
        }
    }

    /* renamed from: w */
    public final int m5900w(String str) {
        C6155o.m17022f(str);
        this.f35460a.m6006y();
        return 25;
    }

    /* renamed from: y */
    public final void m5899y(Bundle bundle) {
        m5898z(bundle, this.f35460a.mo6007x().mo16807a());
    }

    /* renamed from: z */
    public final void m5898z(Bundle bundle, long j) {
        C6155o.m17018j(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.f35460a.mo6047C().m6192p().m6216a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        C6155o.m17018j(bundle2);
        C7826p5.m6098b(bundle2, "app_id", String.class, null);
        C7826p5.m6098b(bundle2, "origin", String.class, null);
        C7826p5.m6098b(bundle2, ShortCut.NAME, String.class, null);
        C7826p5.m6098b(bundle2, "value", Object.class, null);
        C7826p5.m6098b(bundle2, "trigger_event_name", String.class, null);
        C7826p5.m6098b(bundle2, "trigger_timeout", Long.class, 0L);
        C7826p5.m6098b(bundle2, "timed_out_event_name", String.class, null);
        C7826p5.m6098b(bundle2, "timed_out_event_params", Bundle.class, null);
        C7826p5.m6098b(bundle2, "triggered_event_name", String.class, null);
        C7826p5.m6098b(bundle2, "triggered_event_params", Bundle.class, null);
        C7826p5.m6098b(bundle2, "time_to_live", Long.class, 0L);
        C7826p5.m6098b(bundle2, "expired_event_name", String.class, null);
        C7826p5.m6098b(bundle2, "expired_event_params", Bundle.class, null);
        C6155o.m17022f(bundle2.getString(ShortCut.NAME));
        C6155o.m17022f(bundle2.getString("origin"));
        C6155o.m17018j(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString(ShortCut.NAME);
        Object obj = bundle2.get("value");
        if (this.f35460a.m6043G().m5953q0(string) != 0) {
            this.f35460a.mo6047C().m6195m().m6215b("Invalid conditional user property name", this.f35460a.m6042H().m6343p(string));
        } else if (this.f35460a.m6043G().m5944v(string, obj) != 0) {
            this.f35460a.mo6047C().m6195m().m6214c("Invalid conditional user property value", this.f35460a.m6042H().m6343p(string), obj);
        } else {
            Object m5942w = this.f35460a.m6043G().m5942w(string, obj);
            if (m5942w == null) {
                this.f35460a.mo6047C().m6195m().m6214c("Unable to normalize conditional user property value", this.f35460a.m6042H().m6343p(string), obj);
                return;
            }
            C7826p5.m6099a(bundle2, m5942w);
            long j2 = bundle2.getLong("trigger_timeout");
            if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
                this.f35460a.m6006y();
                if (j2 > 15552000000L || j2 < 1) {
                    this.f35460a.mo6047C().m6195m().m6214c("Invalid conditional user property timeout", this.f35460a.m6042H().m6343p(string), Long.valueOf(j2));
                    return;
                }
            }
            long j3 = bundle2.getLong("time_to_live");
            this.f35460a.m6006y();
            if (j3 > 15552000000L || j3 < 1) {
                this.f35460a.mo6047C().m6195m().m6214c("Invalid conditional user property time to live", this.f35460a.m6042H().m6343p(string), Long.valueOf(j3));
            } else {
                this.f35460a.mo6029b().m6109p(new RunnableC7711f6(this, bundle2));
            }
        }
    }
}
