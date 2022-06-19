package p1727n3.p1758e.p1767b.p1768j1.p1769t1;

import android.os.Handler;
import android.os.Looper;
import p1727n3.p1807k.p1816e.C26511c;
/* renamed from: n3.e.b.j1.t1.a */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/a.class */
public final class C26015a {

    /* renamed from: a */
    public static volatile Handler f72666a;

    /* renamed from: a */
    public static Handler m2789a() {
        if (f72666a != null) {
            return f72666a;
        }
        synchronized (C26015a.class) {
            try {
                if (f72666a == null) {
                    f72666a = C26511c.m1720a(Looper.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f72666a;
    }
}
