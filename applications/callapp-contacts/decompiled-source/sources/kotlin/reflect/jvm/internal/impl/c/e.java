package kotlin.reflect.jvm.internal.impl.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/e.class */
public final class e implements Comparable<e> {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f37342a;

    /* renamed from: b  reason: collision with root package name */
    private final String f37343b;

    private e(String str, boolean z) {
        if (str == null) {
            a(0);
        }
        this.f37343b = str;
        this.f37342a = z;
    }

    public static e a(String str) {
        if (str == null) {
            a(3);
        }
        return new e(str, false);
    }

    private static /* synthetic */ void a(int i) {
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

    public static boolean b(String str) {
        if (str == null) {
            a(4);
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

    public static e c(String str) {
        if (str == null) {
            a(5);
        }
        if (str.startsWith("<")) {
            return new e(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': ".concat(String.valueOf(str)));
    }

    public static e d(String str) {
        if (str == null) {
            a(6);
        }
        return str.startsWith("<") ? c(str) : a(str);
    }

    /* renamed from: a */
    public final int compareTo(e eVar) {
        return this.f37343b.compareTo(eVar.f37343b);
    }

    public final String a() {
        String str = this.f37343b;
        if (str == null) {
            a(1);
        }
        return str;
    }

    public final String b() {
        if (!this.f37342a) {
            String a2 = a();
            if (a2 == null) {
                a(2);
            }
            return a2;
        }
        throw new IllegalStateException("not identifier: ".concat(String.valueOf(this)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f37342a == eVar.f37342a && this.f37343b.equals(eVar.f37343b);
    }

    public final int hashCode() {
        return (this.f37343b.hashCode() * 31) + (this.f37342a ? 1 : 0);
    }

    public final String toString() {
        return this.f37343b;
    }
}
