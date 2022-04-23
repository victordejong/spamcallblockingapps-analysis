package kotlin.reflect.jvm.internal.impl.c;

import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.a.i;
import kotlin.jvm.functions.Function1;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final e f37337b = e.c("<root>");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f37338c = Pattern.compile("\\.");

    /* renamed from: d  reason: collision with root package name */
    private static final Function1<String, e> f37339d = new Function1<String, e>() { // from class: kotlin.reflect.jvm.internal.impl.c.c.1
        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ e invoke(String str) {
            return e.d(str);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f37340a;
    private transient b e;
    private transient c f;
    private transient e g;

    public c(String str) {
        if (str == null) {
            a(2);
        }
        this.f37340a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, b bVar) {
        if (str == null) {
            a(0);
        }
        if (bVar == null) {
            a(1);
        }
        this.f37340a = str;
        this.e = bVar;
    }

    private c(String str, c cVar, e eVar) {
        if (str == null) {
            a(3);
        }
        this.f37340a = str;
        this.f = cVar;
        this.g = eVar;
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
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                i2 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        if (i != 1) {
            switch (i) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                th = new IllegalStateException(format);
                break;
            case 9:
            case 15:
            case 16:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    public static c c(e eVar) {
        if (eVar == null) {
            a(16);
        }
        return new c(eVar.a(), b.f37334a.b(), eVar);
    }

    private void h() {
        int lastIndexOf = this.f37340a.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            this.g = e.d(this.f37340a.substring(lastIndexOf + 1));
            this.f = new c(this.f37340a.substring(0, lastIndexOf));
            return;
        }
        this.g = e.d(this.f37340a);
        this.f = b.f37334a.b();
    }

    public final String a() {
        String str = this.f37340a;
        if (str == null) {
            a(4);
        }
        return str;
    }

    public final c a(e eVar) {
        String str;
        if (eVar == null) {
            a(9);
        }
        if (this.f37340a.isEmpty()) {
            str = eVar.a();
        } else {
            str = this.f37340a + "." + eVar.a();
        }
        return new c(str, this, eVar);
    }

    public final boolean b() {
        return this.e != null || a().indexOf(60) < 0;
    }

    public final boolean b(e eVar) {
        if (eVar == null) {
            a(15);
        }
        if (this.f37340a.isEmpty()) {
            return false;
        }
        int indexOf = this.f37340a.indexOf(46);
        String str = this.f37340a;
        String a2 = eVar.a();
        int i = indexOf;
        if (indexOf == -1) {
            i = this.f37340a.length();
        }
        return str.regionMatches(0, a2, 0, i);
    }

    public final b c() {
        b bVar = this.e;
        if (bVar != null) {
            if (bVar == null) {
                a(5);
            }
            return bVar;
        }
        b bVar2 = new b(this);
        this.e = bVar2;
        if (bVar2 == null) {
            a(6);
        }
        return bVar2;
    }

    public final c d() {
        c cVar = this.f;
        if (cVar != null) {
            if (cVar == null) {
                a(7);
            }
            return cVar;
        } else if (!this.f37340a.isEmpty()) {
            h();
            c cVar2 = this.f;
            if (cVar2 == null) {
                a(8);
            }
            return cVar2;
        } else {
            throw new IllegalStateException("root");
        }
    }

    public final e e() {
        e eVar = this.g;
        if (eVar != null) {
            if (eVar == null) {
                a(10);
            }
            return eVar;
        } else if (!this.f37340a.isEmpty()) {
            h();
            e eVar2 = this.g;
            if (eVar2 == null) {
                a(11);
            }
            return eVar2;
        } else {
            throw new IllegalStateException("root");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f37340a.equals(((c) obj).f37340a);
    }

    public final e f() {
        if (this.f37340a.isEmpty()) {
            e eVar = f37337b;
            if (eVar == null) {
                a(12);
            }
            return eVar;
        }
        e e = e();
        if (e == null) {
            a(13);
        }
        return e;
    }

    public final List<e> g() {
        List<e> emptyList = this.f37340a.isEmpty() ? Collections.emptyList() : i.a((Object[]) f37338c.split(this.f37340a), (Function1) f37339d);
        if (emptyList == null) {
            a(14);
        }
        return emptyList;
    }

    public final int hashCode() {
        return this.f37340a.hashCode();
    }

    public final String toString() {
        String a2 = this.f37340a.isEmpty() ? f37337b.a() : this.f37340a;
        if (a2 == null) {
            a(17);
        }
        return a2;
    }
}
