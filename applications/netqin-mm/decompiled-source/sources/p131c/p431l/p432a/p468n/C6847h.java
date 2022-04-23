package p131c.p431l.p432a.p468n;

import android.os.Handler;
import android.os.HandlerThread;
/* renamed from: c.l.a.n.h */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/h.class */
public class C6847h {

    /* renamed from: a */
    public final HandlerThread f21042a;

    /* renamed from: b */
    public Handler f21043b;

    /* renamed from: c.l.a.n.h$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/n/h$b.class */
    public static final class C6849b {

        /* renamed from: a */
        public static final C6847h f21044a = new C6847h();
    }

    public C6847h() {
        HandlerThread handlerThread = new HandlerThread(C6847h.class.getSimpleName());
        this.f21042a = handlerThread;
        handlerThread.setPriority(10);
        this.f21042a.start();
        this.f21043b = new Handler(this.f21042a.getLooper());
    }

    /* renamed from: a */
    public static C6847h m19584a() {
        return C6849b.f21044a;
    }

    /* renamed from: a */
    public void m19583a(Runnable runnable) {
        this.f21043b.post(runnable);
    }
}
