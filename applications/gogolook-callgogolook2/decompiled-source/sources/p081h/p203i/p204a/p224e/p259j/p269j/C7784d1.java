package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/d1.class */
public final class C7784d1 {

    /* renamed from: a */
    public static final AbstractC7768b1<?> f18214a = new C7776c1();

    /* renamed from: b */
    public static final AbstractC7768b1<?> f18215b = m19489a();

    /* renamed from: a */
    public static AbstractC7768b1<?> m19489a() {
        try {
            return (AbstractC7768b1) Class.forName("h.i.g.t").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static AbstractC7768b1<?> m19488b() {
        return f18214a;
    }

    /* renamed from: c */
    public static AbstractC7768b1<?> m19487c() {
        AbstractC7768b1<?> b1Var = f18215b;
        if (b1Var != null) {
            return b1Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
