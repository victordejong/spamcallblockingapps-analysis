package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.q0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/q0.class */
public final class C7672q0 {

    /* renamed from: a */
    public static final Class<?> f18018a = m19826a();

    /* renamed from: a */
    public static Class<?> m19826a() {
        try {
            return Class.forName("h.i.g.p");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static C7679r0 m19825b() {
        Class<?> cls = f18018a;
        if (cls != null) {
            try {
                return (C7679r0) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
            }
        }
        return C7679r0.f18021a;
    }
}
