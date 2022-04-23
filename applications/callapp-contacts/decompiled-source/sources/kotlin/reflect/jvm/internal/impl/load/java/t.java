package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public static final t f37908a = new t();

    /* renamed from: b  reason: collision with root package name */
    public static final b f37909b = new b("kotlin.jvm.JvmField");

    /* renamed from: c  reason: collision with root package name */
    private static final a f37910c;

    static {
        a a2 = a.a(new b("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        p.b(a2, "topLevel(FqName(\"kotlin.reflect.jvm.internal.ReflectionFactoryImpl\"))");
        f37910c = a2;
    }

    private t() {
    }

    public static final boolean a(String name) {
        p.d(name, "name");
        return kotlin.h.p.a(name, "get", false) || kotlin.h.p.a(name, "is", false);
    }

    public static final boolean b(String name) {
        p.d(name, "name");
        return kotlin.h.p.a(name, "set", false);
    }

    public static final String c(String propertyName) {
        p.d(propertyName, "propertyName");
        return e(propertyName) ? propertyName : p.a("get", (Object) kotlin.reflect.jvm.internal.impl.g.a.a.b(propertyName));
    }

    public static final String d(String propertyName) {
        String str;
        p.d(propertyName, "propertyName");
        if (e(propertyName)) {
            str = propertyName.substring(2);
            p.b(str, "(this as java.lang.String).substring(startIndex)");
        } else {
            str = kotlin.reflect.jvm.internal.impl.g.a.a.b(propertyName);
        }
        return p.a("set", (Object) str);
    }

    private static boolean e(String name) {
        p.d(name, "name");
        if (!kotlin.h.p.a(name, "is", false) || name.length() == 2) {
            return false;
        }
        char charAt = name.charAt(2);
        return p.a(97, charAt) > 0 || p.a(charAt, 122) > 0;
    }
}
