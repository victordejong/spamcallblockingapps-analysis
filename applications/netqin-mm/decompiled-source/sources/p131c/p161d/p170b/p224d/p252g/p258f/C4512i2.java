package p131c.p161d.p170b.p224d.p252g.p258f;
/* renamed from: c.d.b.d.g.f.i2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/i2.class */
public final class C4512i2 {

    /* renamed from: a */
    public static final Class<?> f16769a = m25451a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f16770b;

    static {
        f16770b = m25451a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m25451a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m25452a() {
        return f16769a != null && !f16770b;
    }

    /* renamed from: b */
    public static Class<?> m25450b() {
        return f16769a;
    }
}
