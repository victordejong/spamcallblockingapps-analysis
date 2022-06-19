package p000a;
/* renamed from: a.g */
/* loaded from: classes-dex2jar.jar:a/g.class */
public abstract class AbstractC0009g implements AbstractC0023r {

    /* renamed from: a */
    private final AbstractC0023r f20a;

    public AbstractC0009g(AbstractC0023r abstractC0023r) {
        if (abstractC0023r == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f20a = abstractC0023r;
    }

    @Override // p000a.AbstractC0023r
    /* renamed from: a */
    public C0025t mo408a() {
        return this.f20a.mo408a();
    }

    @Override // p000a.AbstractC0023r
    /* renamed from: a_ */
    public void mo406a_(C0005c c0005c, long j) {
        this.f20a.mo406a_(c0005c, j);
    }

    @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f20a.close();
    }

    @Override // p000a.AbstractC0023r, java.io.Flushable
    public void flush() {
        this.f20a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f20a.toString() + ")";
    }
}
