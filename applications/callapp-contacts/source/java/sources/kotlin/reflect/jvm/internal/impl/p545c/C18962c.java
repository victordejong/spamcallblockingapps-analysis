package kotlin.reflect.jvm.internal.impl.p545c;

import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;
import kotlin.p518a.C18273i;
/* renamed from: kotlin.reflect.jvm.internal.impl.c.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/c.class */
public final class C18962c {

    /* renamed from: b */
    private static final C18966e f64688b = C18966e.m2715c("<root>");

    /* renamed from: c */
    private static final Pattern f64689c = Pattern.compile("\\.");

    /* renamed from: d */
    private static final Function1<String, C18966e> f64690d = new Function1<String, C18966e>() { // from class: kotlin.reflect.jvm.internal.impl.c.c.1
        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C18966e invoke(String str) {
            return C18966e.m2714d(str);
        }
    };

    /* renamed from: a */
    public final String f64691a;

    /* renamed from: e */
    private transient C18961b f64692e;

    /* renamed from: f */
    private transient C18962c f64693f;

    /* renamed from: g */
    private transient C18966e f64694g;

    public C18962c(String str) {
        if (str == null) {
            m2734a(2);
        }
        this.f64691a = str;
    }

    public C18962c(String str, C18961b c18961b) {
        if (str == null) {
            m2734a(0);
        }
        if (c18961b == null) {
            m2734a(1);
        }
        this.f64691a = str;
        this.f64692e = c18961b;
    }

    private C18962c(String str, C18962c c18962c, C18966e c18966e) {
        if (str == null) {
            m2734a(3);
        }
        this.f64691a = str;
        this.f64693f = c18962c;
        this.f64694g = c18966e;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2734a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
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
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 9:
            case 15:
            case 16:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: c */
    public static C18962c m2729c(C18966e c18966e) {
        if (c18966e == null) {
            m2734a(16);
        }
        return new C18962c(c18966e.m2721a(), C18961b.f64685a.m2743b(), c18966e);
    }

    /* renamed from: h */
    private void m2724h() {
        int lastIndexOf = this.f64691a.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            this.f64694g = C18966e.m2714d(this.f64691a.substring(lastIndexOf + 1));
            this.f64693f = new C18962c(this.f64691a.substring(0, lastIndexOf));
            return;
        }
        this.f64694g = C18966e.m2714d(this.f64691a);
        this.f64693f = C18961b.f64685a.m2743b();
    }

    /* renamed from: a */
    public final String m2735a() {
        String str = this.f64691a;
        if (str == null) {
            m2734a(4);
        }
        return str;
    }

    /* renamed from: a */
    public final C18962c m2733a(C18966e c18966e) {
        String str;
        if (c18966e == null) {
            m2734a(9);
        }
        if (this.f64691a.isEmpty()) {
            str = c18966e.m2721a();
        } else {
            str = this.f64691a + "." + c18966e.m2721a();
        }
        return new C18962c(str, this, c18966e);
    }

    /* renamed from: b */
    public final boolean m2732b() {
        return this.f64692e != null || m2735a().indexOf(60) < 0;
    }

    /* renamed from: b */
    public final boolean m2731b(C18966e c18966e) {
        if (c18966e == null) {
            m2734a(15);
        }
        if (this.f64691a.isEmpty()) {
            return false;
        }
        int indexOf = this.f64691a.indexOf(46);
        String str = this.f64691a;
        String m2721a = c18966e.m2721a();
        int i = indexOf;
        if (indexOf == -1) {
            i = this.f64691a.length();
        }
        return str.regionMatches(0, m2721a, 0, i);
    }

    /* renamed from: c */
    public final C18961b m2730c() {
        C18961b c18961b = this.f64692e;
        if (c18961b != null) {
            if (c18961b == null) {
                m2734a(5);
            }
            return c18961b;
        }
        C18961b c18961b2 = new C18961b(this);
        this.f64692e = c18961b2;
        if (c18961b2 == null) {
            m2734a(6);
        }
        return c18961b2;
    }

    /* renamed from: d */
    public final C18962c m2728d() {
        C18962c c18962c = this.f64693f;
        if (c18962c != null) {
            if (c18962c == null) {
                m2734a(7);
            }
            return c18962c;
        } else if (this.f64691a.isEmpty()) {
            throw new IllegalStateException("root");
        } else {
            m2724h();
            C18962c c18962c2 = this.f64693f;
            if (c18962c2 == null) {
                m2734a(8);
            }
            return c18962c2;
        }
    }

    /* renamed from: e */
    public final C18966e m2727e() {
        C18966e c18966e = this.f64694g;
        if (c18966e != null) {
            if (c18966e == null) {
                m2734a(10);
            }
            return c18966e;
        } else if (this.f64691a.isEmpty()) {
            throw new IllegalStateException("root");
        } else {
            m2724h();
            C18966e c18966e2 = this.f64694g;
            if (c18966e2 == null) {
                m2734a(11);
            }
            return c18966e2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C18962c) && this.f64691a.equals(((C18962c) obj).f64691a);
    }

    /* renamed from: f */
    public final C18966e m2726f() {
        if (this.f64691a.isEmpty()) {
            C18966e c18966e = f64688b;
            if (c18966e == null) {
                m2734a(12);
            }
            return c18966e;
        }
        C18966e m2727e = m2727e();
        if (m2727e == null) {
            m2734a(13);
        }
        return m2727e;
    }

    /* renamed from: g */
    public final List<C18966e> m2725g() {
        List<C18966e> emptyList = this.f64691a.isEmpty() ? Collections.emptyList() : C18273i.m4199a((Object[]) f64689c.split(this.f64691a), (Function1) f64690d);
        if (emptyList == null) {
            m2734a(14);
        }
        return emptyList;
    }

    public final int hashCode() {
        return this.f64691a.hashCode();
    }

    public final String toString() {
        String m2721a = this.f64691a.isEmpty() ? f64688b.m2721a() : this.f64691a;
        if (m2721a == null) {
            m2734a(17);
        }
        return m2721a;
    }
}
