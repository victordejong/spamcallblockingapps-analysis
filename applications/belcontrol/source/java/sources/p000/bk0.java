package p000;

import android.app.Activity;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: bk0 */
/* loaded from: classes-dex2jar.jar:bk0.class */
public final class bk0 {

    /* renamed from: a */
    public static final String f1968a = "bk0";

    /* renamed from: b */
    public static final AtomicBoolean f1969b = new AtomicBoolean(false);

    /* renamed from: bk0$a */
    /* loaded from: classes-dex2jar.jar:bk0$a.class */
    public static final class RunnableC0252a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (!zl0.l(ui0.e())) {
                bk0.f1969b.set(true);
                bk0.m5615e();
            }
        }
    }

    /* renamed from: c */
    public static void m5617c() {
        try {
            ui0.o().execute(new RunnableC0252a());
        } catch (Exception e) {
            fn0.V(f1968a, e);
        }
    }

    /* renamed from: d */
    public static void m5616d(Activity activity) {
        try {
            if (f1969b.get() && !dk0.m2513d().isEmpty()) {
                ek0.m2134g(activity);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: e */
    public static void m5615e() {
        String j;
        mm0 o = nm0.o(ui0.f(), false);
        if (o == null || (j = o.j()) == null) {
            return;
        }
        dk0.m2510g(j);
    }
}
