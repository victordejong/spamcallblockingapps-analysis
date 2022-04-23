package p081h.p093b.p099c.p103c.p108j;

import android.os.Build;
import android.os.Trace;
/* renamed from: h.b.c.c.j.d */
/* loaded from: classes-dex2jar.jar:h/b/c/c/j/d.class */
public abstract class AbstractC5660d {
    /* renamed from: a */
    public static void m24862a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: a */
    public static void m24861a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
