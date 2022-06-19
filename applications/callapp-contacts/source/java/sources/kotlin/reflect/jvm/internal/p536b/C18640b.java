package kotlin.reflect.jvm.internal.p536b;
/* renamed from: kotlin.reflect.jvm.internal.b.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/b.class */
public final class C18640b<K, V> {

    /* renamed from: a */
    private static final C18640b<Object, Object> f63714a = new C18640b<>(C18642d.m3736a(), 0);

    /* renamed from: b */
    private final C18642d<C18638a<C18643e<K, V>>> f63715b;

    /* renamed from: c */
    private final int f63716c;

    private C18640b(C18642d<C18638a<C18643e<K, V>>> c18642d, int i) {
        this.f63715b = c18642d;
        this.f63716c = i;
    }

    /* renamed from: a */
    private static <K, V> int m3742a(C18638a<C18643e<K, V>> c18638a, Object obj) {
        int i = 0;
        while (c18638a != null && c18638a.f63712c > 0) {
            if (c18638a.f63710a.f63725a.equals(obj)) {
                return i;
            }
            c18638a = c18638a.f63711b;
            i++;
        }
        return -1;
    }

    /* renamed from: a */
    public static <K, V> C18640b<K, V> m3745a() {
        C18640b<K, V> c18640b = (C18640b<K, V>) f63714a;
        if (c18640b != null) {
            return c18640b;
        }
        throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/pcollections/HashPMap", "empty"));
    }

    /* renamed from: a */
    public final C18638a<C18643e<K, V>> m3744a(int i) {
        C18638a<C18643e<K, V>> m3735a = this.f63715b.m3735a(i);
        C18638a<C18643e<K, V>> c18638a = m3735a;
        if (m3735a == null) {
            c18638a = C18638a.m3753a();
        }
        return c18638a;
    }

    /* renamed from: a */
    public final C18640b<K, V> m3743a(K k, V v) {
        C18638a<C18643e<K, V>> m3744a = m3744a(k.hashCode());
        int i = m3744a.f63712c;
        int m3742a = m3742a((C18638a) m3744a, (Object) k);
        C18638a<C18643e<K, V>> c18638a = m3744a;
        if (m3742a != -1) {
            c18638a = m3744a.m3752a(m3742a);
        }
        C18638a<C18643e<K, V>> m3751a = c18638a.m3751a((C18638a<C18643e<K, V>>) new C18643e<>(k, v));
        return new C18640b<>(this.f63715b.m3734a(k.hashCode(), m3751a), (this.f63716c - i) + m3751a.f63712c);
    }
}
