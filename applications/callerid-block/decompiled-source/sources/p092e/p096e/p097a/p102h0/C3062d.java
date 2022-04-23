package p092e.p096e.p097a.p102h0;

import android.util.Log;
/* renamed from: e.e.a.h0.d */
/* loaded from: classes2-dex2jar.jar:e/e/a/h0/d.class */
public class C3062d {

    /* renamed from: a */
    public static boolean f12682a = false;

    /* renamed from: a */
    public static void m414a(Object obj, String str, Object... objArr) {
        m409f(3, obj, str, objArr);
    }

    /* renamed from: b */
    public static void m413b(Object obj, String str, Object... objArr) {
        m409f(6, obj, str, objArr);
    }

    /* renamed from: c */
    public static void m412c(Object obj, Throwable th, String str, Object... objArr) {
        m408g(6, obj, th, str, objArr);
    }

    /* renamed from: d */
    private static String m411d(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("FileDownloader.");
        sb.append((obj instanceof Class ? (Class) obj : obj.getClass()).getSimpleName());
        return sb.toString();
    }

    /* renamed from: e */
    public static void m410e(Object obj, String str, Object... objArr) {
        m409f(4, obj, str, objArr);
    }

    /* renamed from: f */
    private static void m409f(int i, Object obj, String str, Object... objArr) {
        m408g(i, obj, null, str, objArr);
    }

    /* renamed from: g */
    private static void m408g(int i, Object obj, Throwable th, String str, Object... objArr) {
        if ((i >= 5) || f12682a) {
            Log.println(i, m411d(obj), C3066f.m367o(str, objArr));
            if (th != null) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: h */
    public static void m407h(Object obj, String str, Object... objArr) {
        m409f(2, obj, str, objArr);
    }

    /* renamed from: i */
    public static void m406i(Object obj, String str, Object... objArr) {
        m409f(5, obj, str, objArr);
    }
}
