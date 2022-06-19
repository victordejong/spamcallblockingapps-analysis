package kotlin.reflect.jvm.internal.impl.p545c;
/* renamed from: kotlin.reflect.jvm.internal.impl.c.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/e.class */
public final class C18966e implements Comparable<C18966e> {

    /* renamed from: a */
    public final boolean f64696a;

    /* renamed from: b */
    private final String f64697b;

    private C18966e(String str, boolean z) {
        if (str == null) {
            m2720a(0);
        }
        this.f64697b = str;
        this.f64696a = z;
    }

    /* renamed from: a */
    public static C18966e m2719a(String str) {
        if (str == null) {
            m2720a(3);
        }
        return new C18966e(str, false);
    }

    /* renamed from: a */
    private static /* synthetic */ void m2720a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = "name";
        }
        if (i == 1) {
            objArr[1] = "asString";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[1] = "getIdentifier";
        }
        switch (i) {
            case 1:
            case 2:
                break;
            case 3:
                objArr[2] = "identifier";
                break;
            case 4:
                objArr[2] = "isValidIdentifier";
                break;
            case 5:
                objArr[2] = "special";
                break;
            case 6:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 2) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* renamed from: b */
    public static boolean m2716b(String str) {
        if (str == null) {
            m2720a(4);
        }
        if (str.isEmpty() || str.startsWith("<")) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '.' || charAt == '/' || charAt == '\\') {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static C18966e m2715c(String str) {
        if (str == null) {
            m2720a(5);
        }
        if (str.startsWith("<")) {
            return new C18966e(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': ".concat(String.valueOf(str)));
    }

    /* renamed from: d */
    public static C18966e m2714d(String str) {
        if (str == null) {
            m2720a(6);
        }
        return str.startsWith("<") ? m2715c(str) : m2719a(str);
    }

    /* renamed from: a */
    public final int compareTo(C18966e c18966e) {
        return this.f64697b.compareTo(c18966e.f64697b);
    }

    /* renamed from: a */
    public final String m2721a() {
        String str = this.f64697b;
        if (str == null) {
            m2720a(1);
        }
        return str;
    }

    /* renamed from: b */
    public final String m2717b() {
        if (!this.f64696a) {
            String m2721a = m2721a();
            if (m2721a == null) {
                m2720a(2);
            }
            return m2721a;
        }
        throw new IllegalStateException("not identifier: ".concat(String.valueOf(this)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C18966e)) {
            return false;
        }
        C18966e c18966e = (C18966e) obj;
        return this.f64696a == c18966e.f64696a && this.f64697b.equals(c18966e.f64697b);
    }

    public final int hashCode() {
        return (this.f64697b.hashCode() * 31) + (this.f64696a ? 1 : 0);
    }

    public final String toString() {
        return this.f64697b;
    }
}
