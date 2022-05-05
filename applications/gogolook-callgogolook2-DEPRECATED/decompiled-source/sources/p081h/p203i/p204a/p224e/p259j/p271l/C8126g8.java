package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.g8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/g8.class */
public final class C8126g8 {

    /* renamed from: a */
    public static final Class<?> f18851a = m18497a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f18852b;

    static {
        f18852b = m18497a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m18497a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m18498a() {
        return f18851a != null && !f18852b;
    }

    /* renamed from: b */
    public static Class<?> m18496b() {
        return f18851a;
    }
}
