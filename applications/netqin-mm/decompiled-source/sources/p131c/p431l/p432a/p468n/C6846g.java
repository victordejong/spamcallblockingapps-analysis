package p131c.p431l.p432a.p468n;

import android.os.Handler;
import android.os.Looper;
/* renamed from: c.l.a.n.g */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/g.class */
public class C6846g {

    /* renamed from: a */
    public static final Handler f21041a = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public static void m19587a(Runnable runnable) {
        f21041a.post(runnable);
    }

    /* renamed from: a */
    public static void m19586a(Runnable runnable, long j) {
        f21041a.postDelayed(runnable, j);
    }

    /* renamed from: b */
    public static void m19585b(Runnable runnable) {
        f21041a.removeCallbacks(runnable);
    }
}
