package p000;
/* renamed from: sk1 */
/* loaded from: classes3-dex2jar.jar:sk1.class */
public class sk1 {

    /* renamed from: a */
    public static final tk1 f8144a;

    /* renamed from: b */
    public static final al1[] f8145b;

    static {
        tk1 tk1Var = null;
        try {
            tk1Var = (tk1) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e) {
        }
        if (tk1Var == null) {
            tk1Var = new tk1();
        }
        f8144a = tk1Var;
        f8145b = new al1[0];
    }

    /* renamed from: a */
    public static al1 m561a(Class cls) {
        return f8144a.m474a(cls);
    }

    /* renamed from: b */
    public static String m560b(rk1 rk1Var) {
        return f8144a.m472c(rk1Var);
    }
}
