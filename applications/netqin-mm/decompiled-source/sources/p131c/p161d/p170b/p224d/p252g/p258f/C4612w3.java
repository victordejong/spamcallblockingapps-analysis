package p131c.p161d.p170b.p224d.p252g.p258f;
/* renamed from: c.d.b.d.g.f.w3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/w3.class */
public final class C4612w3 {

    /* renamed from: a */
    public static final AbstractC4606v3 f16921a = m25176c();

    /* renamed from: b */
    public static final AbstractC4606v3 f16922b = new C4618x3();

    /* renamed from: a */
    public static AbstractC4606v3 m25178a() {
        return f16921a;
    }

    /* renamed from: b */
    public static AbstractC4606v3 m25177b() {
        return f16922b;
    }

    /* renamed from: c */
    public static AbstractC4606v3 m25176c() {
        try {
            return (AbstractC4606v3) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
