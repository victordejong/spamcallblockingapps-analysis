package org.slf4j;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.event.C9609c;
import org.slf4j.helpers.C9612c;
import org.slf4j.helpers.C9613d;
import org.slf4j.helpers.C9614e;
import org.slf4j.helpers.C9615f;
import org.slf4j.impl.C9617b;
/* renamed from: org.slf4j.c */
/* loaded from: classes2-dex2jar.jar:org/slf4j/c.class */
public final class C9606c {

    /* renamed from: a */
    static volatile int f40489a;

    /* renamed from: b */
    static C9614e f40490b = new C9614e();

    /* renamed from: c */
    static C9612c f40491c = new C9612c();

    /* renamed from: d */
    static boolean f40492d = C9615f.m298c("slf4j.detectLoggerNameMismatch");

    /* renamed from: e */
    private static final String[] f40493e = {"1.6", "1.7"};

    /* renamed from: f */
    private static String f40494f = "org/slf4j/impl/StaticLoggerBinder.class";

    private C9606c() {
    }

    /* renamed from: a */
    private static final void m360a() {
        Set<URL> set = null;
        try {
            if (!m350k()) {
                set = m355f();
                m344q(set);
            }
            C9617b.m287c();
            f40489a = 3;
            m345p(set);
            m354g();
            m347n();
            f40490b.m304b();
        } catch (Exception e) {
            m356e(e);
            throw new IllegalStateException("Unexpected initialization failure", e);
        } catch (NoClassDefFoundError e2) {
            if (!m349l(e2.getMessage())) {
                m356e(e2);
                throw e2;
            }
            f40489a = 4;
            C9615f.m300a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
            C9615f.m300a("Defaulting to no-operation (NOP) logger implementation");
            C9615f.m300a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
        } catch (NoSuchMethodError e3) {
            String message = e3.getMessage();
            if (message != null && message.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                f40489a = 2;
                C9615f.m300a("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                C9615f.m300a("Your binding is version 1.5.5 or earlier.");
                C9615f.m300a("Upgrade your binding to version 1.6.x.");
            }
            throw e3;
        }
    }

    /* renamed from: b */
    private static void m359b(C9609c c9609c, int i) {
        if (c9609c.m340a().m309d()) {
            m358c(i);
        } else if (c9609c.m340a().m308e()) {
        } else {
            m357d();
        }
    }

    /* renamed from: c */
    private static void m358c(int i) {
        C9615f.m300a("A number (" + i + ") of logging calls during the initialization phase have been intercepted and are");
        C9615f.m300a("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        C9615f.m300a("See also http://www.slf4j.org/codes.html#replay");
    }

    /* renamed from: d */
    private static void m357d() {
        C9615f.m300a("The following set of substitute loggers may have been accessed");
        C9615f.m300a("during the initialization phase. Logging calls during this");
        C9615f.m300a("phase were not honored. However, subsequent logging calls to these");
        C9615f.m300a("loggers will work as normally expected.");
        C9615f.m300a("See also http://www.slf4j.org/codes.html#substituteLogger");
    }

    /* renamed from: e */
    static void m356e(Throwable th) {
        f40489a = 2;
        C9615f.m299b("Failed to instantiate SLF4J LoggerFactory", th);
    }

    /* renamed from: f */
    static Set<URL> m355f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = C9606c.class.getClassLoader();
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(f40494f) : classLoader.getResources(f40494f);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e) {
            C9615f.m299b("Error getting resources from path", e);
        }
        return linkedHashSet;
    }

    /* renamed from: g */
    private static void m354g() {
        synchronized (f40490b) {
            f40490b.m301e();
            for (C9613d c9613d : f40490b.m302d()) {
                c9613d.m305h(m352i(c9613d.m310c()));
            }
        }
    }

    /* renamed from: h */
    public static AbstractC9604a m353h() {
        if (f40489a == 0) {
            synchronized (C9606c.class) {
                try {
                    if (f40489a == 0) {
                        f40489a = 1;
                        m348m();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i = f40489a;
        if (i != 1) {
            if (i == 2) {
                throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
            }
            if (i == 3) {
                return C9617b.m287c().m289a();
            }
            if (i != 4) {
                throw new IllegalStateException("Unreachable code");
            }
            return f40491c;
        }
        return f40490b;
    }

    /* renamed from: i */
    public static AbstractC9605b m352i(String str) {
        return m353h().mo292a(str);
    }

    /* renamed from: j */
    private static boolean m351j(Set<URL> set) {
        boolean z = true;
        if (set.size() <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    private static boolean m350k() {
        String m297d = C9615f.m297d("java.vendor.url");
        if (m297d == null) {
            return false;
        }
        return m297d.toLowerCase().contains("android");
    }

    /* renamed from: l */
    private static boolean m349l(String str) {
        if (str == null) {
            return false;
        }
        return str.contains("org/slf4j/impl/StaticLoggerBinder") || str.contains("org.slf4j.impl.StaticLoggerBinder");
    }

    /* renamed from: m */
    private static final void m348m() {
        m360a();
        if (f40489a == 3) {
            m343r();
        }
    }

    /* renamed from: n */
    private static void m347n() {
        LinkedBlockingQueue<C9609c> m303c = f40490b.m303c();
        int size = m303c.size();
        ArrayList<C9609c> arrayList = new ArrayList(128);
        int i = 0;
        while (m303c.drainTo(arrayList, 128) != 0) {
            for (C9609c c9609c : arrayList) {
                m346o(c9609c);
                if (i == 0) {
                    m359b(c9609c, size);
                }
                i++;
            }
            arrayList.clear();
        }
    }

    /* renamed from: o */
    private static void m346o(C9609c c9609c) {
        if (c9609c == null) {
            return;
        }
        C9613d m340a = c9609c.m340a();
        String m310c = m340a.m310c();
        if (m340a.m307f()) {
            throw new IllegalStateException("Delegate logger cannot be null at this state.");
        }
        if (m340a.m308e()) {
            return;
        }
        if (m340a.m309d()) {
            m340a.m306g(c9609c);
        } else {
            C9615f.m300a(m310c);
        }
    }

    /* renamed from: p */
    private static void m345p(Set<URL> set) {
        if (set == null || !m351j(set)) {
            return;
        }
        C9615f.m300a("Actual binding is of type [" + C9617b.m287c().m288b() + "]");
    }

    /* renamed from: q */
    private static void m344q(Set<URL> set) {
        if (m351j(set)) {
            C9615f.m300a("Class path contains multiple SLF4J bindings.");
            for (URL url : set) {
                C9615f.m300a("Found binding in [" + url + "]");
            }
            C9615f.m300a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    /* renamed from: r */
    private static final void m343r() {
        try {
            String str = C9617b.f40529b;
            boolean z = false;
            for (String str2 : f40493e) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            C9615f.m300a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(f40493e).toString());
            C9615f.m300a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError e) {
        } catch (Throwable th) {
            C9615f.m299b("Unexpected problem occured during version sanity check", th);
        }
    }
}
