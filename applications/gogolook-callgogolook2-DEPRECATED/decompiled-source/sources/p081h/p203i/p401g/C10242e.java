package p081h.p203i.p401g;
/* renamed from: h.i.g.e */
/* loaded from: classes2-dex2jar.jar:h/i/g/e.class */
public final class C10242e {

    /* renamed from: a */
    public static final Class<?> f23073a = m13030a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f23074b;

    static {
        f23074b = m13030a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static Class<?> m13031a() {
        return f23073a;
    }

    /* renamed from: a */
    public static <T> Class<T> m13030a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m13029b() {
        return f23073a != null && !f23074b;
    }
}
