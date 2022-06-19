package pl.droidsonroids.gif;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
/* renamed from: pl.droidsonroids.gif.d */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/d.class */
final class C9695d extends ScheduledThreadPoolExecutor {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pl.droidsonroids.gif.d$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/d$b.class */
    public static final class C9697b {

        /* renamed from: a */
        private static final C9695d f40966a = new C9695d();
    }

    private C9695d() {
        super(1, new ThreadPoolExecutor.DiscardPolicy());
    }

    /* renamed from: b */
    public static C9695d m50b() {
        return C9697b.f40966a;
    }
}
