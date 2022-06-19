package p000a;
/* renamed from: a.h */
/* loaded from: classes-dex2jar.jar:a/h.class */
public abstract class AbstractC0010h implements AbstractC0024s {

    /* renamed from: a */
    private final AbstractC0024s f21a;

    public AbstractC0010h(AbstractC0024s abstractC0024s) {
        if (abstractC0024s == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f21a = abstractC0024s;
    }

    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public long mo90a(C0005c c0005c, long j) {
        return this.f21a.mo90a(c0005c, j);
    }

    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public C0025t mo405a() {
        return this.f21a.mo405a();
    }

    /* renamed from: b */
    public final AbstractC0024s m22532b() {
        return this.f21a;
    }

    @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f21a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f21a.toString() + ")";
    }
}
