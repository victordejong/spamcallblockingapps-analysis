package p011aa;

import java.io.IOException;
/* renamed from: aa.j */
/* loaded from: classes2-dex2jar.jar:aa/j.class */
public abstract class AbstractC0057j implements AbstractC0073x {

    /* renamed from: a */
    public final AbstractC0073x f126a;

    public AbstractC0057j(AbstractC0073x abstractC0073x) {
        if (abstractC0073x != null) {
            this.f126a = abstractC0073x;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p011aa.AbstractC0073x
    /* renamed from: E */
    public void mo613E(C0053f c0053f, long j) throws IOException {
        this.f126a.mo613E(c0053f, j);
    }

    @Override // p011aa.AbstractC0073x
    /* renamed from: b */
    public C0075z mo612b() {
        return this.f126a.mo612b();
    }

    @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f126a.close();
    }

    @Override // p011aa.AbstractC0073x, java.io.Flushable
    public void flush() throws IOException {
        this.f126a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f126a.toString() + ")";
    }
}
