package kotlin.reflect.jvm.internal.impl.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final e f37346a = e.c("<no name provided>");

    /* renamed from: b  reason: collision with root package name */
    public static final e f37347b = e.c("<root package>");

    /* renamed from: c  reason: collision with root package name */
    public static final e f37348c = e.a("Companion");

    /* renamed from: d  reason: collision with root package name */
    public static final e f37349d = e.a("no_name_in_PSI_3d19d79d_1ba9_4cd0_b7f5_b46aa3cd5d40");
    public static final e e = e.c("<anonymous>");

    public static e a(e eVar) {
        if (eVar == null || eVar.f37342a) {
            eVar = f37349d;
        }
        if (eVar == null) {
            a(0);
        }
        return eVar;
    }

    private static /* synthetic */ void a(int i) {
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

    public static boolean b(e eVar) {
        if (eVar == null) {
            a(1);
        }
        return !eVar.a().isEmpty() && !eVar.f37342a;
    }
}
