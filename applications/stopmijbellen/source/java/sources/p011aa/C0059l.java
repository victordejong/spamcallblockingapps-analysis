package p011aa;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* renamed from: aa.l */
/* loaded from: classes2-dex2jar.jar:aa/l.class */
public class C0059l extends C0075z {

    /* renamed from: e */
    public C0075z f128e;

    public C0059l(C0075z c0075z) {
        if (c0075z != null) {
            this.f128e = c0075z;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p011aa.C0075z
    /* renamed from: a */
    public C0075z mo8777a() {
        return this.f128e.mo8777a();
    }

    @Override // p011aa.C0075z
    /* renamed from: b */
    public C0075z mo8776b() {
        return this.f128e.mo8776b();
    }

    @Override // p011aa.C0075z
    /* renamed from: c */
    public long mo8775c() {
        return this.f128e.mo8775c();
    }

    @Override // p011aa.C0075z
    /* renamed from: d */
    public C0075z mo8773d(long j) {
        return this.f128e.mo8773d(j);
    }

    @Override // p011aa.C0075z
    /* renamed from: e */
    public boolean mo8774e() {
        return this.f128e.mo8774e();
    }

    @Override // p011aa.C0075z
    /* renamed from: f */
    public void mo8772f() throws IOException {
        this.f128e.mo8772f();
    }

    @Override // p011aa.C0075z
    /* renamed from: g */
    public C0075z mo8771g(long j, TimeUnit timeUnit) {
        return this.f128e.mo8771g(j, timeUnit);
    }
}
