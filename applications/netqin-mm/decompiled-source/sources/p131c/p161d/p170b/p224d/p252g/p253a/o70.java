package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.o70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o70.class */
public final class o70 {

    /* renamed from: a */
    public static final n70<?> f14299a = new p70();

    /* renamed from: b */
    public static final n70<?> f14300b = m26603a();

    /* renamed from: a */
    public static n70<?> m26603a() {
        try {
            return (n70) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static n70<?> m26602b() {
        return f14299a;
    }

    /* renamed from: c */
    public static n70<?> m26601c() {
        n70<?> n70Var = f14300b;
        if (n70Var != null) {
            return n70Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
