package kotlin.reflect.jvm.internal.impl.p545c;

import java.util.List;
/* renamed from: kotlin.reflect.jvm.internal.impl.c.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/b.class */
public final class C18961b {

    /* renamed from: a */
    public static final C18961b f64685a = new C18961b("");

    /* renamed from: b */
    public final C18962c f64686b;

    /* renamed from: c */
    private transient C18961b f64687c;

    public C18961b(String str) {
        if (str == null) {
            m2745a(1);
        }
        this.f64686b = new C18962c(str, this);
    }

    public C18961b(C18962c c18962c) {
        if (c18962c == null) {
            m2745a(2);
        }
        this.f64686b = c18962c;
    }

    private C18961b(C18962c c18962c, C18961b c18961b) {
        if (c18962c == null) {
            m2745a(3);
        }
        this.f64686b = c18962c;
        this.f64687c = c18961b;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2745a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
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
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 8:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: c */
    public static C18961b m2740c(C18966e c18966e) {
        if (c18966e == null) {
            m2745a(13);
        }
        return new C18961b(C18962c.m2729c(c18966e));
    }

    /* renamed from: a */
    public final String m2746a() {
        String m2735a = this.f64686b.m2735a();
        if (m2735a == null) {
            m2745a(4);
        }
        return m2735a;
    }

    /* renamed from: a */
    public final C18961b m2744a(C18966e c18966e) {
        if (c18966e == null) {
            m2745a(8);
        }
        return new C18961b(this.f64686b.m2733a(c18966e), this);
    }

    /* renamed from: b */
    public final C18962c m2743b() {
        C18962c c18962c = this.f64686b;
        if (c18962c == null) {
            m2745a(5);
        }
        return c18962c;
    }

    /* renamed from: b */
    public final boolean m2742b(C18966e c18966e) {
        if (c18966e == null) {
            m2745a(12);
        }
        return this.f64686b.m2731b(c18966e);
    }

    /* renamed from: c */
    public final boolean m2741c() {
        return this.f64686b.f64691a.isEmpty();
    }

    /* renamed from: d */
    public final C18961b m2739d() {
        C18961b c18961b = this.f64687c;
        if (c18961b != null) {
            if (c18961b == null) {
                m2745a(6);
            }
            return c18961b;
        } else if (m2741c()) {
            throw new IllegalStateException("root");
        } else {
            C18961b c18961b2 = new C18961b(this.f64686b.m2728d());
            this.f64687c = c18961b2;
            if (c18961b2 == null) {
                m2745a(7);
            }
            return c18961b2;
        }
    }

    /* renamed from: e */
    public final C18966e m2738e() {
        C18966e m2727e = this.f64686b.m2727e();
        if (m2727e == null) {
            m2745a(9);
        }
        return m2727e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C18961b) && this.f64686b.equals(((C18961b) obj).f64686b);
    }

    /* renamed from: f */
    public final C18966e m2737f() {
        C18966e m2726f = this.f64686b.m2726f();
        if (m2726f == null) {
            m2745a(10);
        }
        return m2726f;
    }

    /* renamed from: g */
    public final List<C18966e> m2736g() {
        List<C18966e> m2725g = this.f64686b.m2725g();
        if (m2725g == null) {
            m2745a(11);
        }
        return m2725g;
    }

    public final int hashCode() {
        return this.f64686b.hashCode();
    }

    public final String toString() {
        return this.f64686b.toString();
    }
}
