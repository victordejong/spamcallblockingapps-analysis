package b;
/* loaded from: classes-dex2jar.jar:b/h.class */
public abstract class h implements q {

    /* renamed from: a  reason: collision with root package name */
    private final q f324a;

    public h(q qVar) {
        if (qVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f324a = qVar;
    }

    @Override // b.q
    public long a(c cVar, long j) {
        return this.f324a.a(cVar, j);
    }

    @Override // b.q
    public final r a() {
        return this.f324a.a();
    }

    @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f324a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f324a.toString() + ")";
    }
}
