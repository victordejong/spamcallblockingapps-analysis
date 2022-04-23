package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.v0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/v0.class */
public final class C7707v0 {

    /* renamed from: a */
    public static final AbstractC7686s0<?> f18047a = new C7693t0();

    /* renamed from: b */
    public static final AbstractC7686s0<?> f18048b = m19755a();

    /* renamed from: a */
    public static AbstractC7686s0<?> m19755a() {
        try {
            return (AbstractC7686s0) Class.forName("h.i.g.t").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static AbstractC7686s0<?> m19754b() {
        return f18047a;
    }

    /* renamed from: c */
    public static AbstractC7686s0<?> m19753c() {
        AbstractC7686s0<?> s0Var = f18048b;
        if (s0Var != null) {
            return s0Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
