package p287x6;
/* renamed from: x6.a */
/* loaded from: classes-dex2jar.jar:x6/a.class */
public final class C4879a {

    /* renamed from: a */
    public static final Class<?> f14943a;

    /* renamed from: b */
    public static final boolean f14944b;

    static {
        Class<?> cls;
        Class<?> cls2;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable th) {
            cls = null;
        }
        f14943a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable th2) {
            cls2 = null;
        }
        f14944b = cls2 != null;
    }

    /* renamed from: a */
    public static boolean m318a() {
        return f14943a != null && !f14944b;
    }
}
