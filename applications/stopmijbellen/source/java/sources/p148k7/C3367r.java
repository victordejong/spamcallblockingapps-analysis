package p148k7;

import java.util.Objects;
import p124i4.C3102d;
import p148k7.AbstractC3363p;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
import p277w7.C4765o;
import p277w7.C4766p;
/* renamed from: k7.r */
/* loaded from: classes2-dex2jar.jar:k7/r.class */
public class C3367r extends AbstractC3361n implements AbstractC3513c, AbstractC3363p {

    /* renamed from: d */
    public AbstractC3360m f11394d;

    /* renamed from: e */
    public AbstractC3363p.AbstractC3364a f11395e;

    /* renamed from: f */
    public int f11396f;

    /* renamed from: g */
    public boolean f11397g;

    /* renamed from: k7.r$a */
    /* loaded from: classes2-dex2jar.jar:k7/r$a.class */
    public class C3368a implements AbstractC3510a {
        public C3368a() {
            C3367r.this = r4;
        }

        @Override // p159l7.AbstractC3510a
        /* renamed from: a */
        public void mo1098a(Exception exc) {
            C3367r.this.mo1262n(exc);
        }
    }

    @Override // p148k7.AbstractC3360m, p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f11394d.mo940a();
    }

    @Override // p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        if (this.f11397g) {
            c3358l.m2339n();
            return;
        }
        if (c3358l != null) {
            this.f11396f += c3358l.f11382c;
        }
        C3102d.m2623p(this, c3358l);
        this.f11396f -= c3358l.f11382c;
        AbstractC3363p.AbstractC3364a abstractC3364a = this.f11395e;
        if (abstractC3364a == null) {
            return;
        }
        C4765o c4765o = (C4765o) abstractC3364a;
        if (C4766p.this.f14667b.mo497a() != null) {
            c4765o.f14665b.f14675j.m1822b("context has died, cancelling");
            c4765o.f14665b.m1925e(true);
            return;
        }
        Objects.requireNonNull(C4766p.this);
        Objects.requireNonNull(C4766p.this);
        Objects.requireNonNull(C4766p.this);
        Objects.requireNonNull(C4766p.this);
    }

    @Override // p148k7.AbstractC3360m
    public void close() {
        this.f11397g = true;
        AbstractC3360m abstractC3360m = this.f11394d;
        if (abstractC3360m != null) {
            abstractC3360m.close();
        }
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: e */
    public boolean mo938e() {
        return this.f11394d.mo938e();
    }

    @Override // p148k7.AbstractC3361n, p148k7.AbstractC3360m
    /* renamed from: f */
    public String mo937f() {
        AbstractC3360m abstractC3360m = this.f11394d;
        if (abstractC3360m == null) {
            return null;
        }
        return abstractC3360m.mo937f();
    }

    @Override // p148k7.AbstractC3363p
    /* renamed from: l */
    public void mo2336l(AbstractC3363p.AbstractC3364a abstractC3364a) {
        this.f11395e = abstractC3364a;
    }

    /* renamed from: o */
    public void mo1827o(AbstractC3360m abstractC3360m) {
        AbstractC3360m abstractC3360m2 = this.f11394d;
        if (abstractC3360m2 != null) {
            abstractC3360m2.mo939b(null);
        }
        this.f11394d = abstractC3360m;
        abstractC3360m.mo939b(this);
        this.f11394d.mo936h(new C3368a());
    }
}
