package p081h.p203i.p204a.p206b.p209j.p215w;

import android.util.Log;
/* renamed from: h.i.a.b.j.w.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/w/a.class */
public final class C6613a {
    /* renamed from: a */
    public static String m22237a(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: a */
    public static void m22236a(String str, String str2) {
        m22237a(str);
    }

    /* renamed from: a */
    public static void m22235a(String str, String str2, Object obj) {
        m22237a(str);
        String.format(str2, obj);
    }

    /* renamed from: a */
    public static void m22234a(String str, String str2, Throwable th) {
        Log.e(m22237a(str), str2, th);
    }

    /* renamed from: a */
    public static void m22233a(String str, String str2, Object... objArr) {
        m22237a(str);
        String.format(str2, objArr);
    }

    /* renamed from: b */
    public static void m22232b(String str, String str2, Object obj) {
        m22237a(str);
        String.format(str2, obj);
    }
}
