package kotlin.reflect.jvm.internal.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/d.class */
final class d<V> {

    /* renamed from: a  reason: collision with root package name */
    private static final d<Object> f36899a = new d<>(c.f36895a);

    /* renamed from: b  reason: collision with root package name */
    private final c<V> f36900b;

    private d(c<V> cVar) {
        this.f36900b = cVar;
    }

    public static <V> d<V> a() {
        return (d<V>) f36899a;
    }

    private d<V> a(c<V> cVar) {
        return cVar == this.f36900b ? this : new d<>(cVar);
    }

    public final V a(int i) {
        return this.f36900b.a(i);
    }

    public final d<V> a(int i, V v) {
        return a(this.f36900b.a(i, (long) v));
    }
}
