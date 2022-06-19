package p189o4;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: o4.o */
/* loaded from: classes-dex2jar.jar:o4/o.class */
public final class C3878o extends AbstractC3877n {

    /* renamed from: a */
    public final AbstractC3877n f12371a;

    /* renamed from: b */
    public final long f12372b;

    /* renamed from: c */
    public final long f12373c;

    public C3878o(AbstractC3877n abstractC3877n, long j, long j2) {
        this.f12371a = abstractC3877n;
        long m1737l = m1737l(j);
        this.f12372b = m1737l;
        this.f12373c = m1737l(m1737l + j2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // p189o4.AbstractC3877n
    /* renamed from: d */
    public final long mo1739d() {
        return this.f12373c - this.f12372b;
    }

    @Override // p189o4.AbstractC3877n
    /* renamed from: k */
    public final InputStream mo1738k(long j, long j2) throws IOException {
        long m1737l = m1737l(this.f12372b);
        return this.f12371a.mo1738k(m1737l, m1737l(j2 + m1737l) - m1737l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: l */
    public final long m1737l(long j) {
        if (j < 0) {
            return 0L;
        }
        char c = j;
        if (j > this.f12371a.mo1739d()) {
            c = this.f12371a.mo1739d();
        }
        return c;
    }
}
