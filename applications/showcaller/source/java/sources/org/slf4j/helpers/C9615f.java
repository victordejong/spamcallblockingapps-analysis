package org.slf4j.helpers;

import java.io.PrintStream;
/* renamed from: org.slf4j.helpers.f */
/* loaded from: classes2-dex2jar.jar:org/slf4j/helpers/f.class */
public final class C9615f {
    /* renamed from: a */
    public static final void m300a(String str) {
        PrintStream printStream = System.err;
        printStream.println("SLF4J: " + str);
    }

    /* renamed from: b */
    public static final void m299b(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }

    /* renamed from: c */
    public static boolean m298c(String str) {
        String m297d = m297d(str);
        if (m297d == null) {
            return false;
        }
        return m297d.equalsIgnoreCase("true");
    }

    /* renamed from: d */
    public static String m297d(String str) {
        String str2;
        if (str != null) {
            try {
                str2 = System.getProperty(str);
            } catch (SecurityException e) {
                str2 = null;
            }
            return str2;
        }
        throw new IllegalArgumentException("null input");
    }
}
