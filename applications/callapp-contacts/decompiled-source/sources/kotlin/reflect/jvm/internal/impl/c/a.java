package kotlin.reflect.jvm.internal.impl.c;

import kotlin.h.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f37330b = true;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f37331a;

    /* renamed from: c  reason: collision with root package name */
    private final b f37332c;

    /* renamed from: d  reason: collision with root package name */
    private final b f37333d;

    public a(b bVar, b bVar2, boolean z) {
        if (bVar == null) {
            a(1);
        }
        if (bVar2 == null) {
            a(2);
        }
        this.f37332c = bVar;
        if (f37330b || !bVar2.f37335b.f37340a.isEmpty()) {
            this.f37333d = bVar2;
            this.f37331a = z;
            return;
        }
        StringBuilder sb = new StringBuilder("Class name must not be root: ");
        sb.append(bVar);
        sb.append(z ? " (local)" : "");
        throw new AssertionError(sb.toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(b bVar, e eVar) {
        this(bVar, b.c(eVar), false);
        if (bVar == null) {
            a(3);
        }
        if (eVar == null) {
            a(4);
        }
    }

    public static a a(String str) {
        return a(str, false);
    }

    public static a a(String str, boolean z) {
        if (str == null) {
            a(12);
        }
        return new a(new b(p.d(str, "").replace('/', '.')), new b(p.c(str, '/', str)), z);
    }

    public static a a(b bVar) {
        if (bVar == null) {
            a(0);
        }
        return new a(bVar.d(), bVar.e());
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? 2 : 3];
        switch (i) {
            case 1:
            case 3:
                objArr[0] = "packageFqName";
                break;
            case 2:
                objArr[0] = "relativeClassName";
                break;
            case 4:
                objArr[0] = "topLevelName";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 10:
                objArr[0] = "segment";
                break;
            case 11:
            case 12:
                objArr[0] = "string";
                break;
            default:
                objArr[0] = "topLevelFqName";
                break;
        }
        if (i == 5) {
            objArr[1] = "getPackageFqName";
        } else if (i == 6) {
            objArr[1] = "getRelativeClassName";
        } else if (i == 7) {
            objArr[1] = "getShortClassName";
        } else if (i == 9) {
            objArr[1] = "asSingleFqName";
        } else if (i == 13 || i == 14) {
            objArr[1] = "asString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                objArr[2] = "<init>";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
                break;
            case 8:
                objArr[2] = "createNestedClassId";
                break;
            case 10:
                objArr[2] = "startsWith";
                break;
            case 11:
            case 12:
                objArr[2] = "fromString";
                break;
            default:
                objArr[2] = "topLevel";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    public final a a(e eVar) {
        if (eVar == null) {
            a(8);
        }
        return new a(a(), this.f37333d.a(eVar), this.f37331a);
    }

    public final b a() {
        b bVar = this.f37332c;
        if (bVar == null) {
            a(5);
        }
        return bVar;
    }

    public final b b() {
        b bVar = this.f37333d;
        if (bVar == null) {
            a(6);
        }
        return bVar;
    }

    public final e c() {
        e e = this.f37333d.e();
        if (e == null) {
            a(7);
        }
        return e;
    }

    public final a d() {
        b d2 = this.f37333d.d();
        if (d2.f37335b.f37340a.isEmpty()) {
            return null;
        }
        return new a(a(), d2, this.f37331a);
    }

    public final boolean e() {
        return !this.f37333d.d().f37335b.f37340a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f37332c.equals(aVar.f37332c) && this.f37333d.equals(aVar.f37333d) && this.f37331a == aVar.f37331a;
    }

    public final b f() {
        if (this.f37332c.f37335b.f37340a.isEmpty()) {
            b bVar = this.f37333d;
            if (bVar == null) {
                a(9);
            }
            return bVar;
        }
        return new b(this.f37332c.a() + "." + this.f37333d.a());
    }

    public final String g() {
        if (this.f37332c.f37335b.f37340a.isEmpty()) {
            String a2 = this.f37333d.a();
            if (a2 == null) {
                a(13);
            }
            return a2;
        }
        String str = this.f37332c.a().replace('.', '/') + "/" + this.f37333d.a();
        if (str == null) {
            a(14);
        }
        return str;
    }

    public final int hashCode() {
        return (((this.f37332c.hashCode() * 31) + this.f37333d.hashCode()) * 31) + Boolean.valueOf(this.f37331a).hashCode();
    }

    public final String toString() {
        if (!this.f37332c.f37335b.f37340a.isEmpty()) {
            return g();
        }
        return "/" + g();
    }
}
