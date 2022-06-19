package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.C6217a;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
import com.google.android.gms.internal.measurement.C7382g9;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.k8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k8.class */
public final class C7773k8 extends AbstractC7673c4 {

    /* renamed from: d */
    private AbstractC7708f3 f35402d;

    /* renamed from: e */
    private volatile Boolean f35403e;

    /* renamed from: f */
    private final AbstractC7776l f35404f;

    /* renamed from: g */
    private final C7654a9 f35405g;

    /* renamed from: i */
    private final AbstractC7776l f35407i;

    /* renamed from: h */
    private final List<Runnable> f35406h = new ArrayList();

    /* renamed from: c */
    private final ServiceConnectionC7761j8 f35401c = new ServiceConnectionC7761j8(this);

    public C7773k8(C7858s4 c7858s4) {
        super(c7858s4);
        this.f35405g = new C7654a9(c7858s4.mo6007x());
        this.f35404f = new C7872t7(this, c7858s4);
        this.f35407i = new C7894v7(this, c7858s4);
    }

    /* renamed from: B */
    private final boolean m6290B() {
        this.f35460a.mo6028c();
        return true;
    }

    /* renamed from: D */
    public final void m6289D() {
        mo6113f();
        this.f35405g.m6585a();
        AbstractC7776l abstractC7776l = this.f35404f;
        this.f35460a.m6006y();
        abstractC7776l.m6255b(C7672c3.f35046K.m6589b(null).longValue());
    }

    /* renamed from: E */
    private final void m6288E(Runnable runnable) {
        mo6113f();
        if (m6285H()) {
            runnable.run();
            return;
        }
        int size = this.f35406h.size();
        this.f35460a.m6006y();
        if (size >= 1000) {
            this.f35460a.mo6047C().m6195m().m6216a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.f35406h.add(runnable);
        this.f35407i.m6255b(60000L);
        m6268n();
    }

    /* renamed from: F */
    public final void m6287F() {
        mo6113f();
        this.f35460a.mo6047C().m6187u().m6215b("Processing queued up service tasks", Integer.valueOf(this.f35406h.size()));
        for (Runnable runnable : this.f35406h) {
            try {
                runnable.run();
            } catch (Exception e) {
                this.f35460a.mo6047C().m6195m().m6215b("Task exception while flushing queue", e);
            }
        }
        this.f35406h.clear();
        this.f35407i.m6253d();
    }

    /* renamed from: G */
    private final zzp m6286G(boolean z) {
        this.f35460a.mo6028c();
        C7720g3 m6027d = this.f35460a.m6027d();
        String str = null;
        if (z) {
            C7813o3 mo6047C = this.f35460a.mo6047C();
            if (mo6047C.f35460a.m6005z().f35195e == null) {
                str = null;
            } else {
                Pair<String, Long> m6581b = mo6047C.f35460a.m6005z().f35195e.m6581b();
                str = null;
                if (m6581b != null) {
                    if (m6581b == C7697e4.f35193c) {
                        str = null;
                    } else {
                        String valueOf = String.valueOf(m6581b.second);
                        String str2 = (String) m6581b.first;
                        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length());
                        sb.append(valueOf);
                        sb.append(":");
                        sb.append(str2);
                        str = sb.toString();
                    }
                }
            }
        }
        return m6027d.m6431m(str);
    }

    /* renamed from: v */
    public static /* synthetic */ void m6260v(C7773k8 c7773k8, ComponentName componentName) {
        c7773k8.mo6113f();
        if (c7773k8.f35402d != null) {
            c7773k8.f35402d = null;
            c7773k8.f35460a.mo6047C().m6187u().m6215b("Disconnected from device MeasurementService", componentName);
            c7773k8.mo6113f();
            c7773k8.m6268n();
        }
    }

    /* renamed from: H */
    public final boolean m6285H() {
        mo6113f();
        m6572h();
        return this.f35402d != null;
    }

    /* renamed from: I */
    public final void m6284I() {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7905w7(this, m6286G(true)));
    }

    /* renamed from: J */
    public final void m6283J(boolean z) {
        C7382g9.m7385a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35107w0)) {
            mo6113f();
            m6572h();
            if (z) {
                m6290B();
                this.f35460a.m6041I().m6363m();
            }
            if (!m6262t()) {
                return;
            }
            m6288E(new RunnableC7916x7(this, m6286G(false)));
        }
    }

    /* renamed from: K */
    public final void m6282K(AbstractC7708f3 abstractC7708f3, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        mo6113f();
        m6572h();
        m6290B();
        this.f35460a.m6006y();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> m6359q = this.f35460a.m6041I().m6359q(100);
            if (m6359q != null) {
                arrayList.addAll(m6359q);
                i = m6359q.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i3);
                if (abstractSafeParcelable2 instanceof zzas) {
                    try {
                        abstractC7708f3.mo6233n6((zzas) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e) {
                        this.f35460a.mo6047C().m6195m().m6215b("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkl) {
                    try {
                        abstractC7708f3.mo6237h6((zzkl) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.f35460a.mo6047C().m6195m().m6215b("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaa) {
                    try {
                        abstractC7708f3.mo6231q2((zzaa) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.f35460a.mo6047C().m6195m().m6215b("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    this.f35460a.mo6047C().m6195m().m6216a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* renamed from: L */
    public final void m6281L(zzas zzasVar, String str) {
        C6155o.m17018j(zzasVar);
        mo6113f();
        m6572h();
        m6290B();
        m6288E(new RunnableC7927y7(this, true, m6286G(true), this.f35460a.m6041I().m6362n(zzasVar), zzasVar, str));
    }

    /* renamed from: M */
    public final void m6280M(zzaa zzaaVar) {
        C6155o.m17018j(zzaaVar);
        mo6113f();
        m6572h();
        this.f35460a.mo6028c();
        m6288E(new RunnableC7938z7(this, true, m6286G(true), this.f35460a.m6041I().m6360p(zzaaVar), new zzaa(zzaaVar), zzaaVar));
    }

    /* renamed from: N */
    public final void m6279N(AtomicReference<List<zzaa>> atomicReference, String str, String str2, String str3) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7653a8(this, atomicReference, null, str2, str3, m6286G(false)));
    }

    /* renamed from: O */
    public final void m6278O(AbstractC7441kc abstractC7441kc, String str, String str2) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7665b8(this, str, str2, m6286G(false), abstractC7441kc));
    }

    /* renamed from: P */
    public final void m6277P(AtomicReference<List<zzkl>> atomicReference, String str, String str2, String str3, boolean z) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7677c8(this, atomicReference, null, str2, str3, m6286G(false), z));
    }

    /* renamed from: Q */
    public final void m6276Q(AbstractC7441kc abstractC7441kc, String str, String str2, boolean z) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7784l7(this, str, str2, m6286G(false), z, abstractC7441kc));
    }

    /* renamed from: R */
    public final void m6275R(zzkl zzklVar) {
        mo6113f();
        m6572h();
        m6290B();
        m6288E(new RunnableC7795m7(this, m6286G(true), this.f35460a.m6041I().m6361o(zzklVar), zzklVar));
    }

    /* renamed from: S */
    public final void m6274S() {
        mo6113f();
        m6572h();
        zzp m6286G = m6286G(false);
        m6290B();
        this.f35460a.m6041I().m6363m();
        m6288E(new RunnableC7806n7(this, m6286G));
    }

    /* renamed from: T */
    public final void m6273T(AtomicReference<String> atomicReference) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7817o7(this, atomicReference, m6286G(false)));
    }

    /* renamed from: U */
    public final void m6272U(AbstractC7441kc abstractC7441kc) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7828p7(this, m6286G(false), abstractC7441kc));
    }

    /* renamed from: V */
    public final void m6271V() {
        mo6113f();
        m6572h();
        zzp m6286G = m6286G(true);
        this.f35460a.m6041I().m6358r();
        m6288E(new RunnableC7839q7(this, m6286G));
    }

    /* renamed from: W */
    public final void m6270W(C7676c7 c7676c7) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7850r7(this, c7676c7));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7673c4
    /* renamed from: k */
    protected final boolean mo5876k() {
        return false;
    }

    /* renamed from: m */
    public final void m6269m(Bundle bundle) {
        mo6113f();
        m6572h();
        m6288E(new RunnableC7861s7(this, m6286G(false), bundle));
    }

    /* renamed from: n */
    public final void m6268n() {
        mo6113f();
        m6572h();
        if (m6285H()) {
            return;
        }
        if (m6266p()) {
            this.f35401c.m6334c();
        } else if (this.f35460a.m6006y().m6487H()) {
        } else {
            this.f35460a.mo6028c();
            List<ResolveInfo> queryIntentServices = this.f35460a.mo6030a().getPackageManager().queryIntentServices(new Intent().setClassName(this.f35460a.mo6030a(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                this.f35460a.mo6047C().m6195m().m6216a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            Context mo6030a = this.f35460a.mo6030a();
            this.f35460a.mo6028c();
            intent.setComponent(new ComponentName(mo6030a, "com.google.android.gms.measurement.AppMeasurementService"));
            this.f35401c.m6336a(intent);
        }
    }

    /* renamed from: o */
    public final Boolean m6267o() {
        return this.f35403e;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x01a6  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6266p() {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7773k8.m6266p():boolean");
    }

    /* renamed from: q */
    public final void m6265q(AbstractC7708f3 abstractC7708f3) {
        mo6113f();
        C6155o.m17018j(abstractC7708f3);
        this.f35402d = abstractC7708f3;
        m6289D();
        m6287F();
    }

    /* renamed from: r */
    public final void m6264r() {
        mo6113f();
        m6572h();
        this.f35401c.m6335b();
        try {
            C6217a.m16846b().m16845c(this.f35460a.mo6030a(), this.f35401c);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f35402d = null;
    }

    /* renamed from: s */
    public final void m6263s(AbstractC7441kc abstractC7441kc, zzas zzasVar, String str) {
        mo6113f();
        m6572h();
        if (this.f35460a.m6043G().m5987O(C6094e.f19409a) == 0) {
            m6288E(new RunnableC7883u7(this, zzasVar, str, abstractC7441kc));
            return;
        }
        this.f35460a.mo6047C().m6192p().m6216a("Not bundling data. Service unavailable or out of date");
        this.f35460a.m6043G().m5981U(abstractC7441kc, new byte[0]);
    }

    /* renamed from: t */
    public final boolean m6262t() {
        mo6113f();
        m6572h();
        if (!this.f35460a.m6006y().m6471u(null, C7672c3.f35111y0)) {
            return false;
        }
        return !m6266p() || this.f35460a.m6043G().m5988N() >= C7672c3.f35113z0.m6589b(null).intValue();
    }
}
