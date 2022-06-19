package p000a;
/* renamed from: a.h */
/* loaded from: classes-dex2jar.jar:a/h.class */
public abstract class AbstractC0011h implements AbstractC0026s {

    /* renamed from: a */
    private final AbstractC0026s f22a;

    public AbstractC0011h(AbstractC0026s abstractC0026s) {
        if (abstractC0026s != null) {
            this.f22a = abstractC0026s;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public long mo2087a(C0005c c0005c, long j) {
        return this.f22a.mo2087a(c0005c, j);
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public C0027t mo2088a() {
        return this.f22a.mo2088a();
    }

    /* renamed from: b */
    public final AbstractC0026s m8108b() {
        return this.f22a;
    }

    @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f22a.toString() + ")";
    }
}
