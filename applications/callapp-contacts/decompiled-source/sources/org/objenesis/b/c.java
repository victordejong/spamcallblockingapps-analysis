package org.objenesis.b;

import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f39393a = System.getProperty("java.specification.version");

    /* renamed from: b  reason: collision with root package name */
    public static final String f39394b = System.getProperty("java.runtime.version");

    /* renamed from: c  reason: collision with root package name */
    public static final String f39395c = System.getProperty("java.vm.info");

    /* renamed from: d  reason: collision with root package name */
    public static final String f39396d = System.getProperty("java.vm.version");
    public static final String e = System.getProperty("java.vm.vendor");
    public static final String f = System.getProperty("java.vm.name");
    public static final int g = c();
    public static final boolean h;
    public static final String i;

    static {
        String property;
        h = (c() == 0 || (property = System.getProperty("java.boot.class.path")) == null || !property.toLowerCase().contains("core-oj.jar")) ? false : true;
        i = System.getProperty("com.google.appengine.runtime.version");
    }

    private c() {
    }

    private static int a(Class<?> cls) {
        try {
            try {
                return Integer.parseInt((String) cls.getField("SDK").get(null));
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            }
        } catch (NoSuchFieldException e3) {
            throw new ObjenesisException(e3);
        }
    }

    public static boolean a() {
        return h;
    }

    public static boolean a(String str) {
        return f.startsWith(str);
    }

    public static boolean b() {
        return i != null;
    }

    private static int c() {
        if (!f.startsWith("Dalvik")) {
            return 0;
        }
        return d();
    }

    private static int d() {
        try {
            Class<?> cls = Class.forName("android.os.Build$VERSION");
            try {
                try {
                    return ((Integer) cls.getField("SDK_INT").get(null)).intValue();
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (NoSuchFieldException e3) {
                return a(cls);
            }
        } catch (ClassNotFoundException e4) {
            throw new ObjenesisException(e4);
        }
    }
}
