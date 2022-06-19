package org.objenesis.p603b;

import org.objenesis.ObjenesisException;
/* renamed from: org.objenesis.b.c */
/* loaded from: classes5-dex2jar.jar:org/objenesis/b/c.class */
public final class C21023c {

    /* renamed from: a */
    public static final String f67622a = System.getProperty("java.specification.version");

    /* renamed from: b */
    public static final String f67623b = System.getProperty("java.runtime.version");

    /* renamed from: c */
    public static final String f67624c = System.getProperty("java.vm.info");

    /* renamed from: d */
    public static final String f67625d = System.getProperty("java.vm.version");

    /* renamed from: e */
    public static final String f67626e = System.getProperty("java.vm.vendor");

    /* renamed from: f */
    public static final String f67627f = System.getProperty("java.vm.name");

    /* renamed from: g */
    public static final int f67628g = m127c();

    /* renamed from: h */
    public static final boolean f67629h;

    /* renamed from: i */
    public static final String f67630i;

    static {
        String property;
        f67629h = (m127c() == 0 || (property = System.getProperty("java.boot.class.path")) == null || !property.toLowerCase().contains("core-oj.jar")) ? false : true;
        f67630i = System.getProperty("com.google.appengine.runtime.version");
    }

    private C21023c() {
    }

    /* renamed from: a */
    private static int m130a(Class<?> cls) {
        try {
            try {
                return Integer.parseInt((String) cls.getField("SDK").get(null));
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchFieldException e2) {
            throw new ObjenesisException(e2);
        }
    }

    /* renamed from: a */
    public static boolean m131a() {
        return f67629h;
    }

    /* renamed from: a */
    public static boolean m129a(String str) {
        return f67627f.startsWith(str);
    }

    /* renamed from: b */
    public static boolean m128b() {
        return f67630i != null;
    }

    /* renamed from: c */
    private static int m127c() {
        if (!f67627f.startsWith("Dalvik")) {
            return 0;
        }
        return m126d();
    }

    /* renamed from: d */
    private static int m126d() {
        try {
            Class<?> cls = Class.forName("android.os.Build$VERSION");
            try {
                try {
                    return ((Integer) cls.getField("SDK_INT").get(null)).intValue();
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
            } catch (NoSuchFieldException e2) {
                return m130a(cls);
            }
        } catch (ClassNotFoundException e3) {
            throw new ObjenesisException(e3);
        }
    }
}
