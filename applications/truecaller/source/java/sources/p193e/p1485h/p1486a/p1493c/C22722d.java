package p193e.p1485h.p1486a.p1493c;

import android.app.Application;
/* renamed from: e.h.a.c.d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/d.class */
public final class C22722d {

    /* renamed from: a */
    public static boolean f62899a = false;

    /* renamed from: a */
    public static void m7901a(Application application) {
        synchronized (C22722d.class) {
            try {
                synchronized (C22722d.class) {
                    if (!f62899a) {
                        f62899a = true;
                        application.registerActivityLifecycleCallbacks(new C22720c(null));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
