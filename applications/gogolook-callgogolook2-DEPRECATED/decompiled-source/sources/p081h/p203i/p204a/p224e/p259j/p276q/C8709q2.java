package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.q2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/q2.class */
public final class C8709q2 {

    /* renamed from: a */
    public static final Class<?> f19934a = m17239a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f19935b;

    static {
        f19935b = m17239a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m17239a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m17240a() {
        return f19934a != null && !f19935b;
    }

    /* renamed from: b */
    public static Class<?> m17238b() {
        return f19934a;
    }
}
