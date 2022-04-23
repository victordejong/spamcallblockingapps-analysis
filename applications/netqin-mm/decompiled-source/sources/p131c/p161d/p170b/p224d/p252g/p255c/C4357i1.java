package p131c.p161d.p170b.p224d.p252g.p255c;
/* renamed from: c.d.b.d.g.c.i1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/i1.class */
public final class C4357i1 {

    /* renamed from: a */
    public static final AbstractC4347g1 f16527a = m25896c();

    /* renamed from: b */
    public static final AbstractC4347g1 f16528b = new C4352h1();

    /* renamed from: a */
    public static AbstractC4347g1 m25898a() {
        return f16527a;
    }

    /* renamed from: b */
    public static AbstractC4347g1 m25897b() {
        return f16528b;
    }

    /* renamed from: c */
    public static AbstractC4347g1 m25896c() {
        try {
            return (AbstractC4347g1) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
