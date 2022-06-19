package p000a;

import java.util.concurrent.TimeUnit;
/* renamed from: a.i */
/* loaded from: classes-dex2jar.jar:a/i.class */
public class C0011i extends C0025t {

    /* renamed from: a */
    private C0025t f22a;

    public C0011i(C0025t c0025t) {
        if (c0025t == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f22a = c0025t;
    }

    @Override // p000a.C0025t
    /* renamed from: H_ */
    public long mo22459H_() {
        return this.f22a.mo22459H_();
    }

    @Override // p000a.C0025t
    /* renamed from: I_ */
    public boolean mo22458I_() {
        return this.f22a.mo22458I_();
    }

    @Override // p000a.C0025t
    /* renamed from: J_ */
    public C0025t mo22457J_() {
        return this.f22a.mo22457J_();
    }

    /* renamed from: a */
    public final C0011i m22530a(C0025t c0025t) {
        if (c0025t == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f22a = c0025t;
        return this;
    }

    /* renamed from: a */
    public final C0025t m22531a() {
        return this.f22a;
    }

    @Override // p000a.C0025t
    /* renamed from: a */
    public C0025t mo22454a(long j) {
        return this.f22a.mo22454a(j);
    }

    @Override // p000a.C0025t
    /* renamed from: a */
    public C0025t mo22453a(long j, TimeUnit timeUnit) {
        return this.f22a.mo22453a(j, timeUnit);
    }

    @Override // p000a.C0025t
    /* renamed from: d */
    public long mo22456d() {
        return this.f22a.mo22456d();
    }

    @Override // p000a.C0025t
    /* renamed from: f */
    public C0025t mo22455f() {
        return this.f22a.mo22455f();
    }

    @Override // p000a.C0025t
    /* renamed from: g */
    public void mo22452g() {
        this.f22a.mo22452g();
    }
}
