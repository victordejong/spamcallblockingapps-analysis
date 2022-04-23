package p131c.p161d.p170b.p224d.p252g.p255c;
/* renamed from: c.d.b.d.g.c.e0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/e0.class */
public final class C4336e0 {

    /* renamed from: a */
    public static final AbstractC4321b0<?> f16506a = new C4326c0();

    /* renamed from: b */
    public static final AbstractC4321b0<?> f16507b = m25945a();

    /* renamed from: a */
    public static AbstractC4321b0<?> m25945a() {
        try {
            return (AbstractC4321b0) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static AbstractC4321b0<?> m25944b() {
        return f16506a;
    }

    /* renamed from: c */
    public static AbstractC4321b0<?> m25943c() {
        AbstractC4321b0<?> b0Var = f16507b;
        if (b0Var != null) {
            return b0Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
