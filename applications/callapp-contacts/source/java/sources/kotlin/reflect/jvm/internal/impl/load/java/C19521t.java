package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p555g.p556a.C19304a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/t.class */
public final class C19521t {

    /* renamed from: a */
    public static final C19521t f65508a = new C19521t();

    /* renamed from: b */
    public static final C18961b f65509b = new C18961b("kotlin.jvm.JvmField");

    /* renamed from: c */
    private static final C18960a f65510c;

    static {
        C18960a m2754a = C18960a.m2754a(new C18961b("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        C18524p.m3843b(m2754a, "topLevel(FqName(\"kotlin.reflect.jvm.internal.ReflectionFactoryImpl\"))");
        f65510c = m2754a;
    }

    private C19521t() {
    }

    /* renamed from: a */
    public static final boolean m2048a(String name) {
        C18524p.m3840d(name, "name");
        return C18425p.m3957a(name, "get", false) || C18425p.m3957a(name, "is", false);
    }

    /* renamed from: b */
    public static final boolean m2047b(String name) {
        C18524p.m3840d(name, "name");
        return C18425p.m3957a(name, "set", false);
    }

    /* renamed from: c */
    public static final String m2046c(String propertyName) {
        C18524p.m3840d(propertyName, "propertyName");
        return m2044e(propertyName) ? propertyName : C18524p.m3847a("get", (Object) C19304a.m2302b(propertyName));
    }

    /* renamed from: d */
    public static final String m2045d(String propertyName) {
        String str;
        C18524p.m3840d(propertyName, "propertyName");
        if (m2044e(propertyName)) {
            str = propertyName.substring(2);
            C18524p.m3843b(str, "(this as java.lang.String).substring(startIndex)");
        } else {
            str = C19304a.m2302b(propertyName);
        }
        return C18524p.m3847a("set", (Object) str);
    }

    /* renamed from: e */
    private static boolean m2044e(String name) {
        C18524p.m3840d(name, "name");
        if (C18425p.m3957a(name, "is", false) && name.length() != 2) {
            char charAt = name.charAt(2);
            return C18524p.m3854a(97, charAt) > 0 || C18524p.m3854a(charAt, 122) > 0;
        }
        return false;
    }
}
