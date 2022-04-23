package kotlin.reflect.jvm.internal.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/b.class */
public final class b<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private static final b<Object, Object> f36892a = new b<>(d.a(), 0);

    /* renamed from: b  reason: collision with root package name */
    private final d<a<e<K, V>>> f36893b;

    /* renamed from: c  reason: collision with root package name */
    private final int f36894c;

    private b(d<a<e<K, V>>> dVar, int i) {
        this.f36893b = dVar;
        this.f36894c = i;
    }

    private static <K, V> int a(a<e<K, V>> aVar, Object obj) {
        int i = 0;
        while (aVar != null && aVar.f36890c > 0) {
            if (aVar.f36888a.f36901a.equals(obj)) {
                return i;
            }
            aVar = aVar.f36889b;
            i++;
        }
        return -1;
    }

    public static <K, V> b<K, V> a() {
        b<K, V> bVar = (b<K, V>) f36892a;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/pcollections/HashPMap", "empty"));
    }

    public final a<e<K, V>> a(int i) {
        a<e<K, V>> a2 = this.f36893b.a(i);
        a<e<K, V>> aVar = a2;
        if (a2 == null) {
            aVar = a.a();
        }
        return aVar;
    }

    public final b<K, V> a(K k, V v) {
        a<e<K, V>> a2 = a(k.hashCode());
        int i = a2.f36890c;
        int a3 = a((a) a2, (Object) k);
        a<e<K, V>> aVar = a2;
        if (a3 != -1) {
            aVar = a2.a(a3);
        }
        a<e<K, V>> a4 = aVar.a((a<e<K, V>>) new e<>(k, v));
        return new b<>(this.f36893b.a(k.hashCode(), a4), (this.f36894c - i) + a4.f36890c);
    }
}
