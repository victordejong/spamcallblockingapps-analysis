package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.p013b.C0373a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2670w;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2709f;
import com.google.android.gms.common.util.C2720q;
import com.google.android.gms.internal.measurement.C4028in;
import com.google.android.gms.internal.measurement.C4035iu;
import com.google.android.gms.internal.measurement.C4047jf;
import com.google.android.gms.internal.measurement.C4054jm;
import com.google.android.gms.internal.measurement.C4072kd;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gk.class */
public final class C4330gk extends AbstractC4243de {

    /* renamed from: a */
    protected C4350hd f18995a;

    /* renamed from: b */
    final C4431kc f18996b;

    /* renamed from: d */
    private AbstractC4324ge f18998d;

    /* renamed from: f */
    private boolean f19000f;

    /* renamed from: e */
    private final Set<AbstractC4328gi> f18999e = new CopyOnWriteArraySet();

    /* renamed from: c */
    protected boolean f18997c = true;

    /* renamed from: g */
    private final AtomicReference<String> f19001g = new AtomicReference<>();

    public C4330gk(C4296fd c4296fd) {
        super(c4296fd);
        this.f18996b = new C4431kc(c4296fd);
    }

    /* renamed from: M */
    public final void m4419M() {
        mo4037o();
        String m4619a = mo4029w().f18772n.m4619a();
        if (m4619a != null) {
            if ("unset".equals(m4619a)) {
                m4402a("app", "_npa", (Object) null, mo4035q().mo13862a());
            } else {
                m4402a("app", "_npa", Long.valueOf(("true".equals(m4619a) ? 1 : null) == 1 ? 1L : 0L), mo4035q().mo13862a());
            }
        }
        if (!this.f18970z.m4574B() || !this.f18997c) {
            mo4030v().m4658i().m4654a("Updating Scion state (FE)");
            mo4279d().m4346C();
            return;
        }
        mo4030v().m4658i().m4654a("Recording app launch after enabling measurement for the first time (FE)");
        m4423I();
        if (C4054jm.m5040b() && mo4027x().m4804a(C4452t.f19462aw)) {
            mo4276g().f19199a.m4256a();
        }
        if (C4047jf.m5050b() && mo4027x().m4804a(C4452t.f19419aB)) {
            if ((this.f18970z.m4550f().f18813a.m4553c().f18767i.m4624a() > 0 ? 1 : null) == null) {
                C4286eu m4550f = this.f18970z.m4550f();
                m4550f.f18813a.m4572D();
                m4550f.m4611a(m4550f.f18813a.mo4034r().getPackageName());
            }
        }
        if (!mo4027x().m4804a(C4452t.f19433aP)) {
            return;
        }
        mo4031u().m4587a(new RunnableC4348hb(this));
    }

    /* renamed from: a */
    private final void m4406a(String str, String str2, long j, Object obj) {
        mo4031u().m4587a(new RunnableC4335gp(this, str, str2, obj, j));
    }

    /* renamed from: b */
    private final ArrayList<Bundle> m4387b(String str, String str2, String str3) {
        ArrayList<Bundle> m4094b;
        if (mo4031u().m4580c()) {
            mo4030v().m4655x_().m4654a("Cannot get conditional user properties from analytics worker thread");
            m4094b = new ArrayList<>(0);
        } else if (C4439kk.m4052a()) {
            mo4030v().m4655x_().m4654a("Cannot get conditional user properties from main thread");
            m4094b = new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f18970z.mo4031u().m4585a(atomicReference, 5000L, "get conditional user properties", new RunnableC4342gw(this, atomicReference, str, str2, str3));
            List list = (List) atomicReference.get();
            if (list == null) {
                mo4030v().m4655x_().m4653a("Timed out waiting for get conditional user properties", str);
                m4094b = new ArrayList<>();
            } else {
                m4094b = C4424jw.m4094b((List<C4442kn>) list);
            }
        }
        return m4094b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.util.Map] */
    /* renamed from: b */
    private final Map<String, Object> m4385b(String str, String str2, String str3, boolean z) {
        C0373a c0373a;
        if (mo4031u().m4580c()) {
            mo4030v().m4655x_().m4654a("Cannot get user properties from analytics worker thread");
            c0373a = Collections.emptyMap();
        } else if (C4439kk.m4052a()) {
            mo4030v().m4655x_().m4654a("Cannot get user properties from main thread");
            c0373a = Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f18970z.mo4031u().m4585a(atomicReference, 5000L, "get user properties", new RunnableC4341gv(this, atomicReference, str, str2, str3, z));
            List<C4423jv> list = (List) atomicReference.get();
            if (list == null) {
                mo4030v().m4655x_().m4653a("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                c0373a = Collections.emptyMap();
            } else {
                c0373a = new C0373a(list.size());
                for (C4423jv c4423jv : list) {
                    c0373a.put(c4423jv.f19272a, c4423jv.m4148a());
                }
            }
        }
        return c0373a;
    }

    /* renamed from: b */
    private final void m4392b(Bundle bundle, long j) {
        C2662s.m13981a(bundle);
        C4320ga.m4436a(bundle, "app_id", String.class, null);
        C4320ga.m4436a(bundle, "origin", String.class, null);
        C4320ga.m4436a(bundle, "name", String.class, null);
        C4320ga.m4436a(bundle, "value", Object.class, null);
        C4320ga.m4436a(bundle, "trigger_event_name", String.class, null);
        C4320ga.m4436a(bundle, "trigger_timeout", Long.class, 0L);
        C4320ga.m4436a(bundle, "timed_out_event_name", String.class, null);
        C4320ga.m4436a(bundle, "timed_out_event_params", Bundle.class, null);
        C4320ga.m4436a(bundle, "triggered_event_name", String.class, null);
        C4320ga.m4436a(bundle, "triggered_event_params", Bundle.class, null);
        C4320ga.m4436a(bundle, "time_to_live", Long.class, 0L);
        C4320ga.m4436a(bundle, "expired_event_name", String.class, null);
        C4320ga.m4436a(bundle, "expired_event_params", Bundle.class, null);
        C2662s.m13979a(bundle.getString("name"));
        C2662s.m13979a(bundle.getString("origin"));
        C2662s.m13981a(bundle.get("value"));
        bundle.putLong("creation_timestamp", j);
        String string = bundle.getString("name");
        Object obj = bundle.get("value");
        if (mo4032t().m4091c(string) != 0) {
            mo4030v().m4655x_().m4653a("Invalid conditional user property name", mo4033s().m4677c(string));
        } else if (mo4032t().m4097b(string, obj) != 0) {
            mo4030v().m4655x_().m4652a("Invalid conditional user property value", mo4033s().m4677c(string), obj);
        } else {
            Object m4090c = mo4032t().m4090c(string, obj);
            if (m4090c == null) {
                mo4030v().m4655x_().m4652a("Unable to normalize conditional user property value", mo4033s().m4677c(string), obj);
                return;
            }
            C4320ga.m4437a(bundle, m4090c);
            long j2 = bundle.getLong("trigger_timeout");
            if (!TextUtils.isEmpty(bundle.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
                mo4030v().m4655x_().m4652a("Invalid conditional user property timeout", mo4033s().m4677c(string), Long.valueOf(j2));
                return;
            }
            long j3 = bundle.getLong("time_to_live");
            if (j3 > 15552000000L || j3 < 1) {
                mo4030v().m4655x_().m4652a("Invalid conditional user property time to live", mo4033s().m4677c(string), Long.valueOf(j3));
            } else {
                mo4031u().m4587a(new RunnableC4337gr(this, bundle));
            }
        }
    }

    /* renamed from: b */
    private final void m4389b(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        mo4031u().m4587a(new RunnableC4333gn(this, str, str2, j, C4424jw.m4101b(bundle), z, z2, z3, str3));
    }

    /* renamed from: b */
    private final void m4386b(String str, String str2, String str3, Bundle bundle) {
        long mo13862a = mo4035q().mo13862a();
        C2662s.m13979a(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString("name", str2);
        bundle2.putLong("creation_timestamp", mo13862a);
        if (str3 != null) {
            bundle2.putString("expired_event_name", str3);
            bundle2.putBundle("expired_event_params", bundle);
        }
        mo4031u().m4587a(new RunnableC4340gu(this, bundle2));
    }

    /* renamed from: c */
    public final void m4382c(Bundle bundle) {
        mo4037o();
        m4711i();
        C2662s.m13981a(bundle);
        C2662s.m13979a(bundle.getString("name"));
        C2662s.m13979a(bundle.getString("origin"));
        C2662s.m13981a(bundle.get("value"));
        if (!this.f18970z.m4574B()) {
            mo4030v().m4657j().m4654a("Conditional property not set since app measurement is disabled");
            return;
        }
        C4423jv c4423jv = new C4423jv(bundle.getString("name"), bundle.getLong("triggered_timestamp"), bundle.get("value"), bundle.getString("origin"));
        try {
            C4450r m4114a = mo4032t().m4114a(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), bundle.getString("origin"), 0L, true, false);
            mo4279d().m4322a(new C4442kn(bundle.getString("app_id"), bundle.getString("origin"), c4423jv, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), mo4032t().m4114a(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), bundle.getString("origin"), 0L, true, false), bundle.getLong("trigger_timeout"), m4114a, bundle.getLong("time_to_live"), mo4032t().m4114a(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: c */
    public final void m4380c(boolean z) {
        mo4037o();
        mo4039m();
        m4711i();
        mo4030v().m4658i().m4653a("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        mo4029w().m4638b(z);
        m4419M();
    }

    /* renamed from: d */
    public final void m4379d(Bundle bundle) {
        mo4037o();
        m4711i();
        C2662s.m13981a(bundle);
        C2662s.m13979a(bundle.getString("name"));
        if (!this.f18970z.m4574B()) {
            mo4030v().m4657j().m4654a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            mo4279d().m4322a(new C4442kn(bundle.getString("app_id"), bundle.getString("origin"), new C4423jv(bundle.getString("name"), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), mo4032t().m4114a(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: B */
    public final void m4430B() {
        if (mo4034r().getApplicationContext() instanceof Application) {
            ((Application) mo4034r().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f18995a);
        }
    }

    /* renamed from: C */
    public final Boolean m4429C() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) mo4031u().m4585a(atomicReference, 15000L, "boolean test flag value", new RunnableC4331gl(this, atomicReference));
    }

    /* renamed from: D */
    public final String m4428D() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) mo4031u().m4585a(atomicReference, 15000L, "String test flag value", new RunnableC4339gt(this, atomicReference));
    }

    /* renamed from: E */
    public final Long m4427E() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) mo4031u().m4585a(atomicReference, 15000L, "long test flag value", new RunnableC4344gy(this, atomicReference));
    }

    /* renamed from: F */
    public final Integer m4426F() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) mo4031u().m4585a(atomicReference, 15000L, "int test flag value", new RunnableC4343gx(this, atomicReference));
    }

    /* renamed from: G */
    public final Double m4425G() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) mo4031u().m4585a(atomicReference, 15000L, "double test flag value", new RunnableC4347ha(this, atomicReference));
    }

    /* renamed from: H */
    public final String m4424H() {
        mo4039m();
        return this.f19001g.get();
    }

    /* renamed from: I */
    public final void m4423I() {
        mo4037o();
        mo4039m();
        m4711i();
        if (!this.f18970z.m4569G()) {
            return;
        }
        if (mo4027x().m4804a(C4452t.f19447ah)) {
            C4184b mo4027x = mo4027x();
            mo4027x.mo4026y();
            Boolean m4791d = mo4027x.m4791d("google_analytics_deferred_deep_link_enabled");
            if (m4791d != null && m4791d.booleanValue()) {
                mo4030v().m4658i().m4654a("Deferred Deep Link feature enabled.");
                mo4031u().m4587a(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.gm

                    /* renamed from: a */
                    private final C4330gk f19004a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f19004a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        C4330gk c4330gk = this.f19004a;
                        c4330gk.mo4037o();
                        if (c4330gk.mo4029w().f18778t.m4626a()) {
                            c4330gk.mo4030v().m4658i().m4654a("Deferred Deep Link already retrieved. Not fetching again.");
                            return;
                        }
                        long m4624a = c4330gk.mo4029w().f18779u.m4624a();
                        c4330gk.mo4029w().f18779u.m4623a(1 + m4624a);
                        if (m4624a < 5) {
                            c4330gk.f18970z.m4568H();
                            return;
                        }
                        c4330gk.mo4030v().m4662e().m4654a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        c4330gk.mo4029w().f18778t.m4625a(true);
                    }
                });
            }
        }
        mo4279d().m4344E();
        this.f18997c = false;
        String m4628i = mo4029w().m4628i();
        if (TextUtils.isEmpty(m4628i)) {
            return;
        }
        mo4036p().m4445A();
        if (m4628i.equals(Build.VERSION.RELEASE)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_po", m4628i);
        m4405a("auto", "_ou", bundle);
    }

    /* renamed from: J */
    public final String m4422J() {
        C4362hp m4366B = this.f18970z.m4539s().m4366B();
        return m4366B != null ? m4366B.f19087a : null;
    }

    /* renamed from: K */
    public final String m4421K() {
        C4362hp m4366B = this.f18970z.m4539s().m4366B();
        return m4366B != null ? m4366B.f19088b : null;
    }

    /* renamed from: L */
    public final String m4420L() {
        String str;
        if (this.f18970z.m4543m() != null) {
            str = this.f18970z.m4543m();
        } else {
            try {
                str = new C2670w(mo4034r()).m13909a("google_app_id");
            } catch (IllegalStateException e) {
                this.f18970z.mo4030v().m4655x_().m4653a("getGoogleAppId failed with exception", e);
                str = null;
            }
        }
        return str;
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C4159ab mo4289a() {
        return super.mo4289a();
    }

    /* renamed from: a */
    public final ArrayList<Bundle> m4409a(String str, String str2) {
        mo4039m();
        return m4387b((String) null, str, str2);
    }

    /* renamed from: a */
    public final ArrayList<Bundle> m4399a(String str, String str2, String str3) {
        C2662s.m13979a(str);
        mo4040l();
        return m4387b(str, str2, str3);
    }

    /* renamed from: a */
    public final Map<String, Object> m4397a(String str, String str2, String str3, boolean z) {
        C2662s.m13979a(str);
        mo4040l();
        return m4385b(str, str2, str3, z);
    }

    /* renamed from: a */
    public final Map<String, Object> m4396a(String str, String str2, boolean z) {
        mo4039m();
        return m4385b((String) null, str, str2, z);
    }

    /* renamed from: a */
    public final void m4418a(long j) {
        mo4039m();
        mo4031u().m4587a(new RunnableC4351he(this, j));
    }

    /* renamed from: a */
    public final void m4417a(Bundle bundle) {
        m4416a(bundle, mo4035q().mo13862a());
    }

    /* renamed from: a */
    public final void m4416a(Bundle bundle, long j) {
        C2662s.m13981a(bundle);
        mo4039m();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            mo4030v().m4662e().m4654a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        m4392b(bundle2, j);
    }

    /* renamed from: a */
    public final void m4415a(AbstractC4324ge abstractC4324ge) {
        mo4037o();
        mo4039m();
        m4711i();
        if (abstractC4324ge != null && abstractC4324ge != this.f18998d) {
            C2662s.m13976a(this.f18998d == null, "EventInterceptor already set.");
        }
        this.f18998d = abstractC4324ge;
    }

    /* renamed from: a */
    public final void m4414a(AbstractC4328gi abstractC4328gi) {
        mo4039m();
        m4711i();
        C2662s.m13981a(abstractC4328gi);
        if (!this.f18999e.add(abstractC4328gi)) {
            mo4030v().m4662e().m4654a("OnEventListener already registered");
        }
    }

    /* renamed from: a */
    public final void m4410a(String str) {
        this.f19001g.set(str);
    }

    /* renamed from: a */
    public final void m4408a(String str, String str2, long j, Bundle bundle) {
        mo4039m();
        mo4037o();
        m4407a(str, str2, j, bundle, true, this.f18998d == null || C4424jw.m4085e(str2), false, null);
    }

    /* renamed from: a */
    public final void m4407a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        List<String> m4687H;
        C2662s.m13979a(str);
        C2662s.m13981a(bundle);
        mo4037o();
        m4711i();
        if (!this.f18970z.m4574B()) {
            mo4030v().m4658i().m4654a("Event not sent since app measurement is disabled");
        } else if (!mo4027x().m4804a(C4452t.f19442ac) || (m4687H = mo4280c().m4687H()) == null || m4687H.contains(str2)) {
            if (!this.f19000f) {
                this.f19000f = true;
                try {
                    try {
                        (!this.f18970z.m4540p() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, mo4034r().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, mo4034r());
                    } catch (Exception e) {
                        mo4030v().m4662e().m4653a("Failed to invoke Tag Manager's initialize() method", e);
                    }
                } catch (ClassNotFoundException e2) {
                    mo4030v().m4659h().m4654a("Tag Manager is not found and thus will not be used");
                }
            }
            if (mo4027x().m4804a(C4452t.f19448ai) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
                m4402a("auto", "_lgclid", bundle.getString("gclid"), mo4035q().mo13862a());
            }
            if (C4072kd.m5020b() && mo4027x().m4804a(C4452t.f19431aN)) {
                mo4026y();
                if (z && C4424jw.m4081g(str2)) {
                    C4424jw mo4032t = mo4032t();
                    Bundle m4622a = mo4029w().f18783y.m4622a();
                    if (m4622a != null) {
                        for (String str4 : m4622a.keySet()) {
                            if (!bundle.containsKey(str4)) {
                                mo4032t.mo4032t().m4134a(bundle, str4, m4622a.get(str4));
                            }
                        }
                    }
                }
            }
            if (z3) {
                mo4026y();
                if (!"_iap".equals(str2)) {
                    C4424jw m4547i = this.f18970z.m4547i();
                    int i = !m4547i.m4116a("event", str2) ? 2 : !m4547i.m4107a("event", C4323gd.f18975a, str2) ? 13 : !m4547i.m4120a("event", 40, str2) ? 2 : 0;
                    if (i != 0) {
                        mo4030v().m4663d().m4653a("Invalid public event name. Event will not be logged (FE)", mo4033s().m4682a(str2));
                        this.f18970z.m4547i();
                        this.f18970z.m4547i().m4145a(i, "_ev", C4424jw.m4118a(str2, 40, true), str2 != null ? str2.length() : 0);
                        return;
                    }
                }
            }
            mo4026y();
            C4362hp m4352a = mo4278e().m4352a(false);
            if (m4352a != null && !bundle.containsKey("_sc")) {
                m4352a.f19090d = true;
            }
            C4361ho.m4357a(m4352a, bundle, z && z3);
            boolean equals = "am".equals(str);
            boolean m4085e = C4424jw.m4085e(str2);
            if (z && this.f18998d != null && !m4085e && !equals) {
                mo4030v().m4658i().m4652a("Passing event to registered event handler (FE)", mo4033s().m4682a(str2), mo4033s().m4684a(bundle));
                this.f18998d.mo4433a(str, str2, bundle, j);
            } else if (this.f18970z.m4569G()) {
                int m4098b = mo4032t().m4098b(str2);
                if (m4098b != 0) {
                    mo4030v().m4663d().m4653a("Invalid event name. Event will not be logged (FE)", mo4033s().m4682a(str2));
                    mo4032t();
                    this.f18970z.m4547i().m4119a(str3, m4098b, "_ev", C4424jw.m4118a(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
                List<String> m13868a = C2709f.m13868a((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
                Bundle m4113a = mo4032t().m4113a(str3, str2, bundle, m13868a, z3, true);
                C4362hp c4362hp = (m4113a == null || !m4113a.containsKey("_sc") || !m4113a.containsKey("_si")) ? null : new C4362hp(m4113a.getString("_sn"), m4113a.getString("_sc"), Long.valueOf(m4113a.getLong("_si")).longValue());
                if (c4362hp == null) {
                    c4362hp = m4352a;
                }
                if (mo4027x().m4804a(C4452t.f19410T)) {
                    mo4026y();
                    if (mo4278e().m4352a(false) != null && "_ae".equals(str2)) {
                        long m4263b = mo4276g().f19200b.m4263b();
                        if (m4263b > 0) {
                            mo4032t().m4135a(m4113a, m4263b);
                        }
                    }
                }
                if (C4035iu.m5067b() && mo4027x().m4804a(C4452t.f19461av)) {
                    if (!"auto".equals(str) && "_ssr".equals(str2)) {
                        C4424jw mo4032t2 = mo4032t();
                        String string = m4113a.getString("_ffr");
                        String trim = C2720q.m13826a(string) ? null : string.trim();
                        if (C4424jw.m4089c(trim, mo4032t2.mo4029w().f18780v.m4619a())) {
                            mo4032t2.mo4030v().m4658i().m4654a("Not logging duplicate session_start_with_rollout event");
                            z4 = false;
                        } else {
                            mo4032t2.mo4029w().f18780v.m4618a(trim);
                            z4 = true;
                        }
                        if (!z4) {
                            return;
                        }
                    } else if ("_ae".equals(str2)) {
                        String m4619a = mo4032t().mo4029w().f18780v.m4619a();
                        if (!TextUtils.isEmpty(m4619a)) {
                            m4113a.putString("_ffr", m4619a);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(m4113a);
                long nextLong = mo4032t().m4088d().nextLong();
                if (mo4029w().f18775q.m4624a() > 0 && mo4029w().m4642a(j) && mo4029w().f18777s.m4626a()) {
                    mo4030v().m4657j().m4654a("Current session is expired, remove the session number, ID, and engagement time");
                    m4402a("auto", "_sid", (Object) null, mo4035q().mo13862a());
                    m4402a("auto", "_sno", (Object) null, mo4035q().mo13862a());
                    m4402a("auto", "_se", (Object) null, mo4035q().mo13862a());
                }
                if (m4113a.getLong("extend_session", 0L) == 1) {
                    mo4030v().m4657j().m4654a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    this.f18970z.m4551e().f19199a.m4255a(j, true);
                }
                String[] strArr = (String[]) m4113a.keySet().toArray(new String[m4113a.size()]);
                Arrays.sort(strArr);
                if (!C4028in.m5084b() || !mo4027x().m4804a(C4452t.f19425aH) || !mo4027x().m4804a(C4452t.f19424aG)) {
                    int i2 = 0;
                    for (String str5 : strArr) {
                        Object obj = m4113a.get(str5);
                        mo4032t();
                        Bundle[] m4099b = C4424jw.m4099b(obj);
                        if (m4099b != null) {
                            m4113a.putInt(str5, m4099b.length);
                            for (int i3 = 0; i3 < m4099b.length; i3++) {
                                Bundle bundle2 = m4099b[i3];
                                C4361ho.m4357a(c4362hp, bundle2, true);
                                Bundle m4113a2 = mo4032t().m4113a(str3, "_ep", bundle2, m13868a, z3, false);
                                m4113a2.putString("_en", str2);
                                m4113a2.putLong("_eid", nextLong);
                                m4113a2.putString("_gn", str5);
                                m4113a2.putInt("_ll", m4099b.length);
                                m4113a2.putInt("_i", i3);
                                arrayList.add(m4113a2);
                            }
                            i2 = m4099b.length + i2;
                        }
                    }
                    if (i2 != 0) {
                        m4113a.putLong("_eid", nextLong);
                        m4113a.putInt("_epc", i2);
                    }
                } else {
                    for (String str6 : strArr) {
                        mo4032t();
                        Bundle[] m4099b2 = C4424jw.m4099b(m4113a.get(str6));
                        if (m4099b2 != null) {
                            m4113a.putParcelableArray(str6, m4099b2);
                        }
                    }
                }
                int i4 = 0;
                while (i4 < arrayList.size()) {
                    Bundle bundle3 = (Bundle) arrayList.get(i4);
                    String str7 = i4 != 0 ? "_ep" : str2;
                    bundle3.putString("_o", str);
                    if (z2) {
                        bundle3 = mo4032t().m4138a(bundle3);
                    }
                    mo4279d().m4321a(new C4450r(str7, new C4445m(bundle3), str, j), str3);
                    if (!equals) {
                        for (AbstractC4328gi abstractC4328gi : this.f18999e) {
                            abstractC4328gi.mo4431a(str, str2, new Bundle(bundle3), j);
                        }
                    }
                    i4++;
                }
                mo4026y();
                if (mo4278e().m4352a(false) == null || !"_ae".equals(str2)) {
                    return;
                }
                mo4276g().m4285a(true, true, mo4035q().mo13861b());
            }
        } else {
            mo4030v().m4658i().m4652a("Dropping non-safelisted event. event name, origin", str2, str);
        }
    }

    /* renamed from: a */
    public final void m4405a(String str, String str2, Bundle bundle) {
        m4403a(str, str2, bundle, true, true, mo4035q().mo13862a());
    }

    /* renamed from: a */
    public final void m4404a(String str, String str2, Bundle bundle, boolean z) {
        m4403a(str, str2, bundle, false, true, mo4035q().mo13862a());
    }

    /* renamed from: a */
    public final void m4403a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        mo4039m();
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        m4389b(str, str2, j, bundle, z2, !z2 || this.f18998d == null || C4424jw.m4085e(str2), !z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4402a(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r0 = com.google.android.gms.common.internal.C2662s.m13979a(r0)
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.C2662s.m13979a(r0)
            r0 = r8
            r0.mo4037o()
            r0 = r8
            r0.mo4039m()
            r0 = r8
            r0.m4711i()
            r0 = r10
            r14 = r0
            java.lang.String r0 = "allow_personalized_ads"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lad
            r0 = r11
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L96
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L96
            java.lang.String r0 = "false"
            r1 = r11
            java.lang.String r1 = (java.lang.String) r1
            java.util.Locale r2 = java.util.Locale.ENGLISH
            java.lang.String r1 = r1.toLowerCase(r2)
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L89
            r0 = 1
            r15 = r0
        L4a:
            r0 = r15
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.el r0 = r0.mo4029w()
            com.google.android.gms.measurement.internal.er r0 = r0.f18772n
            r14 = r0
            r0 = r11
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = 1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L8f
            java.lang.String r0 = "true"
            r10 = r0
        L68:
            r0 = r14
            r1 = r10
            r0.m4618a(r1)
            java.lang.String r0 = "_npa"
            r10 = r0
        L71:
            r0 = r8
            com.google.android.gms.measurement.internal.fd r0 = r0.f18970z
            boolean r0 = r0.m4574B()
            if (r0 != 0) goto Lb3
            r0 = r8
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()
            com.google.android.gms.measurement.internal.ea r0 = r0.m4657j()
            java.lang.String r1 = "User property not set since app measurement is disabled"
            r0.m4654a(r1)
        L88:
            return
        L89:
            r0 = 0
            r15 = r0
            goto L4a
        L8f:
            java.lang.String r0 = "false"
            r10 = r0
            goto L68
        L96:
            r0 = r10
            r14 = r0
            r0 = r11
            if (r0 != 0) goto Lad
            java.lang.String r0 = "_npa"
            r14 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.el r0 = r0.mo4029w()
            com.google.android.gms.measurement.internal.er r0 = r0.f18772n
            java.lang.String r1 = "unset"
            r0.m4618a(r1)
        Lad:
            r0 = r14
            r10 = r0
            goto L71
        Lb3:
            r0 = r8
            com.google.android.gms.measurement.internal.fd r0 = r0.f18970z
            boolean r0 = r0.m4569G()
            if (r0 == 0) goto L88
            com.google.android.gms.measurement.internal.jv r0 = new com.google.android.gms.measurement.internal.jv
            r1 = r0
            r2 = r10
            r3 = r12
            r4 = r11
            r5 = r9
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.hu r0 = r0.mo4279d()
            r1 = r9
            r0.m4323a(r1)
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4330gk.m4402a(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    /* renamed from: a */
    public final void m4401a(String str, String str2, Object obj, boolean z) {
        m4400a(str, str2, obj, z, mo4035q().mo13862a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c7, code lost:
        if ((r10 instanceof java.lang.CharSequence) != false) goto L31;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4400a(java.lang.String r8, java.lang.String r9, java.lang.Object r10, boolean r11, long r12) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4330gk.m4400a(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    /* renamed from: a */
    public final void m4398a(String str, String str2, String str3, Bundle bundle) {
        C2662s.m13979a(str);
        mo4040l();
        m4386b(str, str2, str3, bundle);
    }

    /* renamed from: a */
    public final void m4395a(boolean z) {
        m4711i();
        mo4039m();
        mo4031u().m4587a(new RunnableC4345gz(this, z));
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ C4330gk mo4284b() {
        return super.mo4284b();
    }

    /* renamed from: b */
    public final void m4394b(long j) {
        mo4039m();
        mo4031u().m4587a(new RunnableC4334go(this, j));
    }

    /* renamed from: b */
    public final void m4393b(Bundle bundle) {
        C2662s.m13981a(bundle);
        C2662s.m13979a(bundle.getString("app_id"));
        mo4040l();
        m4392b(new Bundle(bundle), mo4035q().mo13862a());
    }

    /* renamed from: b */
    public final void m4391b(AbstractC4328gi abstractC4328gi) {
        mo4039m();
        m4711i();
        C2662s.m13981a(abstractC4328gi);
        if (!this.f18999e.remove(abstractC4328gi)) {
            mo4030v().m4662e().m4654a("OnEventListener had not been registered");
        }
    }

    /* renamed from: b */
    public final void m4388b(String str, String str2, Bundle bundle) {
        mo4039m();
        mo4037o();
        m4408a(str, str2, mo4035q().mo13862a(), bundle);
    }

    /* renamed from: b */
    public final void m4384b(boolean z) {
        m4711i();
        mo4039m();
        mo4031u().m4587a(new RunnableC4349hc(this, z));
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ C4260dv mo4280c() {
        return super.mo4280c();
    }

    /* renamed from: c */
    public final void m4383c(long j) {
        m4410a((String) null);
        mo4031u().m4587a(new RunnableC4336gq(this, j));
    }

    /* renamed from: c */
    public final void m4381c(String str, String str2, Bundle bundle) {
        mo4039m();
        m4386b((String) null, str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C4367hu mo4279d() {
        return super.mo4279d();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ C4361ho mo4278e() {
        return super.mo4278e();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ C4259du mo4277f() {
        return super.mo4277f();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ C4399iz mo4276g() {
        return super.mo4276g();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4271ef, com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4243de
    /* renamed from: z */
    protected final boolean mo4275z() {
        return false;
    }
}
