package p011aa;

import java.io.IOException;
/* renamed from: aa.k */
/* loaded from: classes2-dex2jar.jar:aa/k.class */
public abstract class AbstractC0058k implements AbstractC0074y {

    /* renamed from: a */
    public final AbstractC0074y f127a;

    public AbstractC0058k(AbstractC0074y abstractC0074y) {
        if (abstractC0074y != null) {
            this.f127a = abstractC0074y;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return this.f127a.mo610b();
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f127a.close();
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) throws IOException {
        return this.f127a.mo609f(c0053f, j);
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f127a.toString() + ")";
    }
}
