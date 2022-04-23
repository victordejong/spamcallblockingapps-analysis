package p131c.p161d.p367h;
/* renamed from: c.d.h.u0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/u0.class */
public final class C6374u0 {

    /* renamed from: a */
    public static final AbstractC6368s0 f20041a = m21040c();

    /* renamed from: b */
    public static final AbstractC6368s0 f20042b = new C6370t0();

    /* renamed from: a */
    public static AbstractC6368s0 m21042a() {
        return f20041a;
    }

    /* renamed from: b */
    public static AbstractC6368s0 m21041b() {
        return f20042b;
    }

    /* renamed from: c */
    public static AbstractC6368s0 m21040c() {
        try {
            return (AbstractC6368s0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
