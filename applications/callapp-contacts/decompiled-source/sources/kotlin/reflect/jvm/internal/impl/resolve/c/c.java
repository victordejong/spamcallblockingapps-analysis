package kotlin.reflect.jvm.internal.impl.resolve.c;

import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f38241a;

    /* renamed from: b  reason: collision with root package name */
    private b f38242b;

    private c(String str) {
        if (str == null) {
            a(5);
        }
        this.f38241a = str;
    }

    public static c a(String str) {
        if (str == null) {
            a(0);
        }
        return new c(str);
    }

    public static c a(a aVar) {
        if (aVar == null) {
            a(1);
        }
        b a2 = aVar.a();
        String replace = aVar.b().a().replace('.', '$');
        if (a2.c()) {
            return new c(replace);
        }
        return new c(a2.a().replace('.', '/') + "/" + replace);
    }

    public static c a(b bVar) {
        if (bVar == null) {
            a(2);
        }
        c cVar = new c(bVar.a().replace('.', '/'));
        cVar.f38242b = bVar;
        return cVar;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 3 || i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "classId";
                break;
            case 2:
            case 4:
                objArr[0] = "fqName";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
                break;
            case 5:
            default:
                objArr[0] = "internalName";
                break;
        }
        if (i == 3) {
            objArr[1] = "byFqNameWithoutInnerClasses";
        } else if (i == 6) {
            objArr[1] = "getFqNameForClassNameWithoutDollars";
        } else if (i == 7) {
            objArr[1] = "getPackageFqName";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
        } else {
            objArr[1] = "getInternalName";
        }
        switch (i) {
            case 1:
                objArr[2] = "byClassId";
                break;
            case 2:
            case 4:
                objArr[2] = "byFqNameWithoutInnerClasses";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                break;
            case 5:
                objArr[2] = "<init>";
                break;
            default:
                objArr[2] = "byInternalName";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 3 || i == 6 || i == 7 || i == 8) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    public final b a() {
        return new b(this.f38241a.replace('/', '.'));
    }

    public final b b() {
        int lastIndexOf = this.f38241a.lastIndexOf("/");
        if (lastIndexOf != -1) {
            return new b(this.f38241a.substring(0, lastIndexOf).replace('/', '.'));
        }
        b bVar = b.f37334a;
        if (bVar == null) {
            a(7);
        }
        return bVar;
    }

    public final String c() {
        String str = this.f38241a;
        if (str == null) {
            a(8);
        }
        return str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f38241a.equals(((c) obj).f38241a);
    }

    public final int hashCode() {
        return this.f38241a.hashCode();
    }

    public final String toString() {
        return this.f38241a;
    }
}
