package p1727n3.p1790h.p1791a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.h.a.b */
/* loaded from: classes-dex2jar.jar:n3/h/a/b.class */
public final class C26247b<T> {

    /* renamed from: a */
    public Object f73169a;

    /* renamed from: b */
    public C26250e<T> f73170b;

    /* renamed from: c */
    public f<Void> f73171c = new f<>();

    /* renamed from: d */
    public boolean f73172d;

    /* renamed from: a */
    public boolean m2258a(T t) {
        boolean z = true;
        this.f73172d = true;
        C26250e<T> c26250e = this.f73170b;
        if (c26250e == null || !c26250e.f73174b.m2265h(t)) {
            z = false;
        }
        if (z) {
            m2257b();
        }
        return z;
    }

    /* renamed from: b */
    public final void m2257b() {
        this.f73169a = null;
        this.f73170b = null;
        this.f73171c = null;
    }

    /* renamed from: c */
    public boolean m2256c(Throwable th) {
        boolean z = true;
        this.f73172d = true;
        C26250e<T> c26250e = this.f73170b;
        if (c26250e == null || !c26250e.f73174b.m2264i(th)) {
            z = false;
        }
        if (z) {
            m2257b();
        }
        return z;
    }

    public void finalize() {
        f<Void> fVar;
        C26250e<T> c26250e = this.f73170b;
        if (c26250e != null && !c26250e.isDone()) {
            StringBuilder m8728C = C22128a.m8728C("The completer object was garbage collected - this future would otherwise never complete. The tag was: ");
            m8728C.append(this.f73169a);
            c26250e.f73174b.m2264i(new C26248c(m8728C.toString()));
        }
        if (this.f73172d || (fVar = this.f73171c) == null) {
            return;
        }
        fVar.h((Object) null);
    }
}
