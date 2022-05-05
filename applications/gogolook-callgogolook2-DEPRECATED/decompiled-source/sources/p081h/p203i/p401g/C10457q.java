package p081h.p203i.p401g;
/* renamed from: h.i.g.q */
/* loaded from: classes2-dex2jar.jar:h/i/g/q.class */
public final class C10457q {

    /* renamed from: a */
    public static final Class<?> f23787a = m11792b();

    /* renamed from: a */
    public static C10459r m11794a() {
        C10459r a = m11793a("getEmptyRegistry");
        if (a == null) {
            a = C10459r.f23791e;
        }
        return a;
    }

    /* renamed from: a */
    public static final C10459r m11793a(String str) {
        Class<?> cls = f23787a;
        if (cls == null) {
            return null;
        }
        try {
            return (C10459r) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static Class<?> m11792b() {
        try {
            return Class.forName("h.i.g.p");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }
}
