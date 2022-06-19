package kotlin.reflect.jvm.internal.impl.resolve.p565c;

import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.c.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/c.class */
public final class C19766c {

    /* renamed from: a */
    private final String f65956a;

    /* renamed from: b */
    private C18961b f65957b;

    private C19766c(String str) {
        if (str == null) {
            m1504a(5);
        }
        this.f65956a = str;
    }

    /* renamed from: a */
    public static C19766c m1503a(String str) {
        if (str == null) {
            m1504a(0);
        }
        return new C19766c(str);
    }

    /* renamed from: a */
    public static C19766c m1502a(C18960a c18960a) {
        if (c18960a == null) {
            m1504a(1);
        }
        C18961b m2758a = c18960a.m2758a();
        String replace = c18960a.m2752b().m2746a().replace('.', '$');
        if (m2758a.m2741c()) {
            return new C19766c(replace);
        }
        return new C19766c(m2758a.m2746a().replace('.', '/') + "/" + replace);
    }

    /* renamed from: a */
    public static C19766c m1501a(C18961b c18961b) {
        if (c18961b == null) {
            m1504a(2);
        }
        C19766c c19766c = new C19766c(c18961b.m2746a().replace('.', '/'));
        c19766c.f65957b = c18961b;
        return c19766c;
    }

    /* renamed from: a */
    private static /* synthetic */ void m1504a(int i) {
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

    /* renamed from: a */
    public final C18961b m1505a() {
        return new C18961b(this.f65956a.replace('/', '.'));
    }

    /* renamed from: b */
    public final C18961b m1500b() {
        int lastIndexOf = this.f65956a.lastIndexOf("/");
        if (lastIndexOf == -1) {
            C18961b c18961b = C18961b.f64685a;
            if (c18961b == null) {
                m1504a(7);
            }
            return c18961b;
        }
        return new C18961b(this.f65956a.substring(0, lastIndexOf).replace('/', '.'));
    }

    /* renamed from: c */
    public final String m1499c() {
        String str = this.f65956a;
        if (str == null) {
            m1504a(8);
        }
        return str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f65956a.equals(((C19766c) obj).f65956a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f65956a.hashCode();
    }

    public final String toString() {
        return this.f65956a;
    }
}
