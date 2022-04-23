package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.util.Log;
/* renamed from: c.d.e.q.p0.j.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/j.class */
public class C5562j {
    /* renamed from: a */
    public static void m23515a(String str) {
        if (Log.isLoggable("FIAM.Display", 3)) {
            Log.d("FIAM.Display", str);
        }
    }

    /* renamed from: a */
    public static void m23514a(String str, float f) {
        m23515a(str + ": " + f);
    }

    /* renamed from: a */
    public static void m23513a(String str, float f, float f2) {
        m23515a(str + ": (" + f + ", " + f2 + ")");
    }

    /* renamed from: b */
    public static void m23512b(String str) {
        m23515a("============ " + str + " ============");
    }

    /* renamed from: c */
    public static void m23511c(String str) {
        Log.e("FIAM.Display", str);
    }

    /* renamed from: d */
    public static void m23510d(String str) {
        if (Log.isLoggable("FIAM.Display", 4)) {
            Log.i("FIAM.Display", str);
        }
    }
}
