package p131c.p161d.p170b.p173b.p176i.p182w;

import android.util.Log;
/* renamed from: c.d.b.b.i.w.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/w/a.class */
public final class C2601a {
    /* renamed from: a */
    public static String m29450a(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: a */
    public static void m29449a(String str, String str2) {
        Log.i(m29450a(str), str2);
    }

    /* renamed from: a */
    public static void m29448a(String str, String str2, Object obj) {
        Log.d(m29450a(str), String.format(str2, obj));
    }

    /* renamed from: a */
    public static void m29447a(String str, String str2, Throwable th) {
        Log.e(m29450a(str), str2, th);
    }

    /* renamed from: a */
    public static void m29446a(String str, String str2, Object... objArr) {
        Log.d(m29450a(str), String.format(str2, objArr));
    }

    /* renamed from: b */
    public static void m29445b(String str, String str2, Object obj) {
        Log.w(m29450a(str), String.format(str2, obj));
    }
}
