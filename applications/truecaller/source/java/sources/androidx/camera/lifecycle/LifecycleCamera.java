package androidx.camera.lifecycle;

import java.util.Collections;
import java.util.List;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.p1772k1.C26064c;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
/* loaded from: classes-dex2jar.jar:androidx/camera/lifecycle/LifecycleCamera.class */
public final class LifecycleCamera implements AbstractC26985a0, AbstractC25926h0 {

    /* renamed from: b */
    public final AbstractC26992b0 f499b;

    /* renamed from: c */
    public final C26064c f500c;

    /* renamed from: a */
    public final Object f498a = new Object();

    /* renamed from: d */
    public boolean f501d = false;

    public LifecycleCamera(AbstractC26992b0 abstractC26992b0, C26064c c26064c) {
        boolean z = false;
        this.f499b = abstractC26992b0;
        this.f500c = c26064c;
        if (((C26994c0) abstractC26992b0.getLifecycle()).f75501c.compareTo(AbstractC27028u.EnumC27030b.STARTED) >= 0 ? true : z) {
            c26064c.m2758f();
        } else {
            c26064c.m2756k();
        }
        abstractC26992b0.getLifecycle().mo988a(this);
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25926h0
    /* renamed from: a */
    public AbstractC26075l0 mo2761a() {
        return this.f500c.mo2761a();
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25926h0
    /* renamed from: b */
    public AbstractC25929i0 mo2760b() {
        return this.f500c.mo2760b();
    }

    /* renamed from: c */
    public AbstractC26992b0 m43068c() {
        AbstractC26992b0 abstractC26992b0;
        synchronized (this.f498a) {
            abstractC26992b0 = this.f499b;
        }
        return abstractC26992b0;
    }

    /* renamed from: f */
    public List<AbstractC25921g1> m43067f() {
        List<AbstractC25921g1> unmodifiableList;
        synchronized (this.f498a) {
            unmodifiableList = Collections.unmodifiableList(this.f500c.m2755l());
        }
        return unmodifiableList;
    }

    /* renamed from: j */
    public void m43066j() {
        synchronized (this.f498a) {
            if (this.f501d) {
                return;
            }
            onStop(this.f499b);
            this.f501d = true;
        }
    }

    /* renamed from: k */
    public void m43065k() {
        synchronized (this.f498a) {
            if (!this.f501d) {
                return;
            }
            boolean z = false;
            this.f501d = false;
            if (((C26994c0) this.f499b.getLifecycle()).f75501c.compareTo(AbstractC27028u.EnumC27030b.STARTED) >= 0) {
                z = true;
            }
            if (z) {
                onStart(this.f499b);
            }
        }
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
    public void onDestroy(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f498a) {
            C26064c c26064c = this.f500c;
            c26064c.m2754m(c26064c.m2755l());
        }
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_START)
    public void onStart(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f498a) {
            if (!this.f501d) {
                this.f500c.m2758f();
            }
        }
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_STOP)
    public void onStop(AbstractC26992b0 abstractC26992b0) {
        synchronized (this.f498a) {
            if (!this.f501d) {
                this.f500c.m2756k();
            }
        }
    }
}
