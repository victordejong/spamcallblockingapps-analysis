package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/b0.class */
public final class C7767b0 {

    /* renamed from: a */
    public static final Class<?> f18195a = m19519a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f18196b;

    static {
        f18196b = m19519a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m19519a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m19520a() {
        return f18195a != null && !f18196b;
    }

    /* renamed from: b */
    public static Class<?> m19518b() {
        return f18195a;
    }
}
