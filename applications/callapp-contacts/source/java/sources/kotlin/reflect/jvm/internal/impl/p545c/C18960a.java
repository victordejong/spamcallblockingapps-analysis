package kotlin.reflect.jvm.internal.impl.p545c;

import kotlin.p532h.C18425p;
/* renamed from: kotlin.reflect.jvm.internal.impl.c.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/a.class */
public final class C18960a {

    /* renamed from: b */
    static final /* synthetic */ boolean f64681b = true;

    /* renamed from: a */
    public final boolean f64682a;

    /* renamed from: c */
    private final C18961b f64683c;

    /* renamed from: d */
    private final C18961b f64684d;

    public C18960a(C18961b c18961b, C18961b c18961b2, boolean z) {
        if (c18961b == null) {
            m2757a(1);
        }
        if (c18961b2 == null) {
            m2757a(2);
        }
        this.f64683c = c18961b;
        if (f64681b || !c18961b2.f64686b.f64691a.isEmpty()) {
            this.f64684d = c18961b2;
            this.f64682a = z;
            return;
        }
        StringBuilder sb = new StringBuilder("Class name must not be root: ");
        sb.append(c18961b);
        sb.append(z ? " (local)" : "");
        throw new AssertionError(sb.toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C18960a(C18961b c18961b, C18966e c18966e) {
        this(c18961b, C18961b.m2740c(c18966e), false);
        if (c18961b == null) {
            m2757a(3);
        }
        if (c18966e == null) {
            m2757a(4);
        }
    }

    /* renamed from: a */
    public static C18960a m2756a(String str) {
        return m2755a(str, false);
    }

    /* renamed from: a */
    public static C18960a m2755a(String str, boolean z) {
        if (str == null) {
            m2757a(12);
        }
        return new C18960a(new C18961b(C18425p.m3914d(str, "").replace('/', '.')), new C18961b(C18425p.m3918c(str, '/', str)), z);
    }

    /* renamed from: a */
    public static C18960a m2754a(C18961b c18961b) {
        if (c18961b == null) {
            m2757a(0);
        }
        return new C18960a(c18961b.m2739d(), c18961b.m2738e());
    }

    /* renamed from: a */
    private static /* synthetic */ void m2757a(int i) {
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

    /* renamed from: a */
    public final C18960a m2753a(C18966e c18966e) {
        if (c18966e == null) {
            m2757a(8);
        }
        return new C18960a(m2758a(), this.f64684d.m2744a(c18966e), this.f64682a);
    }

    /* renamed from: a */
    public final C18961b m2758a() {
        C18961b c18961b = this.f64683c;
        if (c18961b == null) {
            m2757a(5);
        }
        return c18961b;
    }

    /* renamed from: b */
    public final C18961b m2752b() {
        C18961b c18961b = this.f64684d;
        if (c18961b == null) {
            m2757a(6);
        }
        return c18961b;
    }

    /* renamed from: c */
    public final C18966e m2751c() {
        C18966e m2738e = this.f64684d.m2738e();
        if (m2738e == null) {
            m2757a(7);
        }
        return m2738e;
    }

    /* renamed from: d */
    public final C18960a m2750d() {
        C18961b m2739d = this.f64684d.m2739d();
        if (m2739d.f64686b.f64691a.isEmpty()) {
            return null;
        }
        return new C18960a(m2758a(), m2739d, this.f64682a);
    }

    /* renamed from: e */
    public final boolean m2749e() {
        return !this.f64684d.m2739d().f64686b.f64691a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C18960a c18960a = (C18960a) obj;
        return this.f64683c.equals(c18960a.f64683c) && this.f64684d.equals(c18960a.f64684d) && this.f64682a == c18960a.f64682a;
    }

    /* renamed from: f */
    public final C18961b m2748f() {
        if (this.f64683c.f64686b.f64691a.isEmpty()) {
            C18961b c18961b = this.f64684d;
            if (c18961b == null) {
                m2757a(9);
            }
            return c18961b;
        }
        return new C18961b(this.f64683c.m2746a() + "." + this.f64684d.m2746a());
    }

    /* renamed from: g */
    public final String m2747g() {
        if (this.f64683c.f64686b.f64691a.isEmpty()) {
            String m2746a = this.f64684d.m2746a();
            if (m2746a == null) {
                m2757a(13);
            }
            return m2746a;
        }
        String str = this.f64683c.m2746a().replace('.', '/') + "/" + this.f64684d.m2746a();
        if (str == null) {
            m2757a(14);
        }
        return str;
    }

    public final int hashCode() {
        return (((this.f64683c.hashCode() * 31) + this.f64684d.hashCode()) * 31) + Boolean.valueOf(this.f64682a).hashCode();
    }

    public final String toString() {
        if (this.f64683c.f64686b.f64691a.isEmpty()) {
            return "/" + m2747g();
        }
        return m2747g();
    }
}
