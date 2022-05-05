package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/u.class */
public final class C7699u {

    /* renamed from: a */
    public static final Class<?> f18035a = m19787a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f18036b;

    static {
        f18036b = m19787a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m19787a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m19788a() {
        return f18035a != null && !f18036b;
    }

    /* renamed from: b */
    public static Class<?> m19786b() {
        return f18035a;
    }
}
