package kotlin.reflect.jvm.internal.impl.c;

import java.util.List;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f37334a = new b("");

    /* renamed from: b  reason: collision with root package name */
    public final c f37335b;

    /* renamed from: c  reason: collision with root package name */
    private transient b f37336c;

    public b(String str) {
        if (str == null) {
            a(1);
        }
        this.f37335b = new c(str, this);
    }

    public b(c cVar) {
        if (cVar == null) {
            a(2);
        }
        this.f37335b = cVar;
    }

    private b(c cVar, b bVar) {
        if (cVar == null) {
            a(3);
        }
        this.f37335b = cVar;
        this.f37336c = bVar;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                i2 = 2;
                break;
            case 8:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "fqName";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 12:
                objArr[0] = "segment";
                break;
            case 13:
                objArr[0] = "shortName";
                break;
            default:
                objArr[0] = "names";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
                objArr[1] = "toUnsafe";
                break;
            case 6:
            case 7:
                objArr[1] = "parent";
                break;
            case 8:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 9:
                objArr[1] = "shortName";
                break;
            case 10:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 11:
                objArr[1] = "pathSegments";
                break;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[2] = "<init>";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                break;
            case 8:
                objArr[2] = "child";
                break;
            case 12:
                objArr[2] = "startsWith";
                break;
            case 13:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "fromSegments";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                th = new IllegalStateException(format);
                break;
            case 8:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    public static b c(e eVar) {
        if (eVar == null) {
            a(13);
        }
        return new b(c.c(eVar));
    }

    public final String a() {
        String a2 = this.f37335b.a();
        if (a2 == null) {
            a(4);
        }
        return a2;
    }

    public final b a(e eVar) {
        if (eVar == null) {
            a(8);
        }
        return new b(this.f37335b.a(eVar), this);
    }

    public final c b() {
        c cVar = this.f37335b;
        if (cVar == null) {
            a(5);
        }
        return cVar;
    }

    public final boolean b(e eVar) {
        if (eVar == null) {
            a(12);
        }
        return this.f37335b.b(eVar);
    }

    public final boolean c() {
        return this.f37335b.f37340a.isEmpty();
    }

    public final b d() {
        b bVar = this.f37336c;
        if (bVar != null) {
            if (bVar == null) {
                a(6);
            }
            return bVar;
        } else if (!c()) {
            b bVar2 = new b(this.f37335b.d());
            this.f37336c = bVar2;
            if (bVar2 == null) {
                a(7);
            }
            return bVar2;
        } else {
            throw new IllegalStateException("root");
        }
    }

    public final e e() {
        e e = this.f37335b.e();
        if (e == null) {
            a(9);
        }
        return e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f37335b.equals(((b) obj).f37335b);
    }

    public final e f() {
        e f = this.f37335b.f();
        if (f == null) {
            a(10);
        }
        return f;
    }

    public final List<e> g() {
        List<e> g = this.f37335b.g();
        if (g == null) {
            a(11);
        }
        return g;
    }

    public final int hashCode() {
        return this.f37335b.hashCode();
    }

    public final String toString() {
        return this.f37335b.toString();
    }
}
