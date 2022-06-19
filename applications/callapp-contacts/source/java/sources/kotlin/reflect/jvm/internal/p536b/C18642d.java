package kotlin.reflect.jvm.internal.p536b;
/* renamed from: kotlin.reflect.jvm.internal.b.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/d.class */
final class C18642d<V> {

    /* renamed from: a */
    private static final C18642d<Object> f63723a = new C18642d<>(C18641c.f63717a);

    /* renamed from: b */
    private final C18641c<V> f63724b;

    private C18642d(C18641c<V> c18641c) {
        this.f63724b = c18641c;
    }

    /* renamed from: a */
    public static <V> C18642d<V> m3736a() {
        return (C18642d<V>) f63723a;
    }

    /* renamed from: a */
    private C18642d<V> m3733a(C18641c<V> c18641c) {
        return c18641c == this.f63724b ? this : new C18642d<>(c18641c);
    }

    /* renamed from: a */
    public final V m3735a(int i) {
        return this.f63724b.m3741a(i);
    }

    /* renamed from: a */
    public final C18642d<V> m3734a(int i, V v) {
        return m3733a(this.f63724b.m3740a(i, (long) v));
    }
}
