package com.pgl.p474a.p475a;
/* renamed from: com.pgl.a.a.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/a/a/a.class */
public final class C17049a {

    /* renamed from: a */
    public static int f60556a = 255;

    /* renamed from: a */
    public static String m5960a() {
        int i = f60556a;
        return i != 2 ? i != 3 ? "" : "https://bds-va.byteoversea.com" : "https://bds-sg.byteoversea.com";
    }

    /* renamed from: a */
    public static void m5959a(int i) {
        synchronized (C17049a.class) {
            try {
                f60556a = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static String m5958b() {
        int i = f60556a;
        return i != 2 ? i != 3 ? "" : "https://sdfp-va.byteoversea.com" : "https://sdfp-sg.byteoversea.com";
    }
}
