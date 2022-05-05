package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.s3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/s3.class */
public final class C8728s3 {

    /* renamed from: a */
    public static final AbstractC8710q3<?> f19956a = new C8719r3();

    /* renamed from: b */
    public static final AbstractC8710q3<?> f19957b = m17207a();

    /* renamed from: a */
    public static AbstractC8710q3<?> m17207a() {
        try {
            return (AbstractC8710q3) Class.forName("h.i.g.t").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static AbstractC8710q3<?> m17206b() {
        return f19956a;
    }

    /* renamed from: c */
    public static AbstractC8710q3<?> m17205c() {
        AbstractC8710q3<?> q3Var = f19957b;
        if (q3Var != null) {
            return q3Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
