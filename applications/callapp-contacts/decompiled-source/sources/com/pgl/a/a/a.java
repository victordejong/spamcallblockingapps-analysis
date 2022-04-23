package com.pgl.a.a;
/* loaded from: classes4-dex2jar.jar:com/pgl/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f34934a = 255;

    public static String a() {
        int i = f34934a;
        return i != 2 ? i != 3 ? "" : "https://bds-va.byteoversea.com" : "https://bds-sg.byteoversea.com";
    }

    public static void a(int i) {
        synchronized (a.class) {
            try {
                f34934a = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String b() {
        int i = f34934a;
        return i != 2 ? i != 3 ? "" : "https://sdfp-va.byteoversea.com" : "https://sdfp-sg.byteoversea.com";
    }
}
