package p078c.p122d.p123a.p128i0;

import android.util.Log;
/* renamed from: c.d.a.i0.d */
/* loaded from: classes2-dex2jar.jar:c/d/a/i0/d.class */
public class C2036d {

    /* renamed from: a */
    public static boolean f7151a = false;

    /* renamed from: a */
    public static void m28253a(Object obj, String str, Object... objArr) {
        m28248f(3, obj, str, objArr);
    }

    /* renamed from: b */
    public static void m28252b(Object obj, String str, Object... objArr) {
        m28248f(6, obj, str, objArr);
    }

    /* renamed from: c */
    public static void m28251c(Object obj, Throwable th, String str, Object... objArr) {
        m28247g(6, obj, th, str, objArr);
    }

    /* renamed from: d */
    private static String m28250d(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("FileDownloader.");
        sb.append((obj instanceof Class ? (Class) obj : obj.getClass()).getSimpleName());
        return sb.toString();
    }

    /* renamed from: e */
    public static void m28249e(Object obj, String str, Object... objArr) {
        m28248f(4, obj, str, objArr);
    }

    /* renamed from: f */
    private static void m28248f(int i, Object obj, String str, Object... objArr) {
        m28247g(i, obj, null, str, objArr);
    }

    /* renamed from: g */
    private static void m28247g(int i, Object obj, Throwable th, String str, Object... objArr) {
        if ((i >= 5) || f7151a) {
            Log.println(i, m28250d(obj), C2040f.m28206o(str, objArr));
            if (th == null) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m28246h(Object obj, String str, Object... objArr) {
        m28248f(2, obj, str, objArr);
    }

    /* renamed from: i */
    public static void m28245i(Object obj, String str, Object... objArr) {
        m28248f(5, obj, str, objArr);
    }
}
