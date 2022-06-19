package kotlin.reflect.jvm.internal.impl.p545c;
/* renamed from: kotlin.reflect.jvm.internal.impl.c.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/g.class */
public final class C18968g {

    /* renamed from: a */
    public static final C18966e f64700a = C18966e.m2715c("<no name provided>");

    /* renamed from: b */
    public static final C18966e f64701b = C18966e.m2715c("<root package>");

    /* renamed from: c */
    public static final C18966e f64702c = C18966e.m2719a("Companion");

    /* renamed from: d */
    public static final C18966e f64703d = C18966e.m2719a("no_name_in_PSI_3d19d79d_1ba9_4cd0_b7f5_b46aa3cd5d40");

    /* renamed from: e */
    public static final C18966e f64704e = C18966e.m2715c("<anonymous>");

    /* renamed from: a */
    public static C18966e m2711a(C18966e c18966e) {
        if (c18966e == null || c18966e.f64696a) {
            c18966e = f64703d;
        }
        if (c18966e == null) {
            m2712a(0);
        }
        return c18966e;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2712a(int i) {
        String str = i != 1 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[i != 1 ? 2 : 3];
        if (i != 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/SpecialNames";
        } else {
            objArr[0] = "name";
        }
        if (i != 1) {
            objArr[1] = "safeIdentifier";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/SpecialNames";
        }
        if (i == 1) {
            objArr[2] = "isSafeIdentifier";
        }
        String format = String.format(str, objArr);
        throw (i != 1 ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* renamed from: b */
    public static boolean m2710b(C18966e c18966e) {
        if (c18966e == null) {
            m2712a(1);
        }
        return !c18966e.m2721a().isEmpty() && !c18966e.f64696a;
    }
}
