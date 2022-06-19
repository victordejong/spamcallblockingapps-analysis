package p000a;

import java.util.concurrent.TimeUnit;
/* renamed from: a.i */
/* loaded from: classes-dex2jar.jar:a/i.class */
public class C0012i extends C0027t {

    /* renamed from: a */
    private C0027t f23a;

    public C0012i(C0027t c0027t) {
        if (c0027t != null) {
            this.f23a = c0027t;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C0012i m8106a(C0027t c0027t) {
        if (c0027t != null) {
            this.f23a = c0027t;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C0027t m8107a() {
        return this.f23a;
    }

    @Override // p000a.C0027t
    /* renamed from: a */
    public C0027t mo8030a(long j) {
        return this.f23a.mo8030a(j);
    }

    @Override // p000a.C0027t
    /* renamed from: a */
    public C0027t mo8029a(long j, TimeUnit timeUnit) {
        return this.f23a.mo8029a(j, timeUnit);
    }

    @Override // p000a.C0027t
    /* renamed from: d */
    public long mo8035d() {
        return this.f23a.mo8035d();
    }

    @Override // p000a.C0027t
    /* renamed from: f */
    public C0027t mo8034f() {
        return this.f23a.mo8034f();
    }

    @Override // p000a.C0027t
    /* renamed from: g */
    public void mo8028g() {
        this.f23a.mo8028g();
    }

    @Override // p000a.C0027t
    /* renamed from: p_ */
    public long mo8033p_() {
        return this.f23a.mo8033p_();
    }

    @Override // p000a.C0027t
    /* renamed from: q_ */
    public boolean mo8032q_() {
        return this.f23a.mo8032q_();
    }

    @Override // p000a.C0027t
    /* renamed from: r_ */
    public C0027t mo8031r_() {
        return this.f23a.mo8031r_();
    }
}
