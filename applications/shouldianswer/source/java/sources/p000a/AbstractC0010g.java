package p000a;
/* renamed from: a.g */
/* loaded from: classes-dex2jar.jar:a/g.class */
public abstract class AbstractC0010g implements AbstractC0025r {

    /* renamed from: a */
    private final AbstractC0025r f21a;

    public AbstractC0010g(AbstractC0025r abstractC0025r) {
        if (abstractC0025r != null) {
            this.f21a = abstractC0025r;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p000a.AbstractC0025r
    /* renamed from: a */
    public C0027t mo2091a() {
        return this.f21a.mo2091a();
    }

    @Override // p000a.AbstractC0025r
    /* renamed from: a_ */
    public void mo2089a_(C0005c c0005c, long j) {
        this.f21a.mo2089a_(c0005c, j);
    }

    @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f21a.close();
    }

    @Override // p000a.AbstractC0025r, java.io.Flushable
    public void flush() {
        this.f21a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f21a.toString() + ")";
    }
}
