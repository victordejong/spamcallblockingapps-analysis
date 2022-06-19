package p092e.p096e.p097a;

import com.liulishuo.filedownloader.message.C2764b;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import p092e.p096e.p097a.AbstractC3092w;
import p092e.p096e.p097a.p102h0.C3054b;
/* renamed from: e.e.a.p */
/* loaded from: classes2-dex2jar.jar:e/e/a/p.class */
class C3081p {

    /* renamed from: a */
    private final C3083b f12718a = new C3083b();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e.e.a.p$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/p$a.class */
    public static class C3082a {

        /* renamed from: a */
        private static final C3081p f12719a = new C3081p();

        static {
            C2764b.m1840a().m1838c(new C3097z());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e.e.a.p$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/p$b.class */
    public static class C3083b {

        /* renamed from: a */
        private ThreadPoolExecutor f12720a;

        /* renamed from: b */
        private LinkedBlockingQueue<Runnable> f12721b;

        C3083b() {
            m304b();
        }

        /* renamed from: b */
        private void m304b() {
            LinkedBlockingQueue<Runnable> linkedBlockingQueue = new LinkedBlockingQueue<>();
            this.f12721b = linkedBlockingQueue;
            this.f12720a = C3054b.m428b(3, linkedBlockingQueue, "LauncherTask");
        }

        /* renamed from: a */
        public void m305a(AbstractC3092w.AbstractC3094b abstractC3094b) {
            this.f12720a.execute(new RunnableC3084c(abstractC3094b));
        }
    }

    /* renamed from: e.e.a.p$c */
    /* loaded from: classes2-dex2jar.jar:e/e/a/p$c.class */
    public static class RunnableC3084c implements Runnable {

        /* renamed from: b */
        private final AbstractC3092w.AbstractC3094b f12722b;

        /* renamed from: c */
        private boolean f12723c = false;

        RunnableC3084c(AbstractC3092w.AbstractC3094b abstractC3094b) {
            this.f12722b = abstractC3094b;
        }

        public boolean equals(Object obj) {
            return super.equals(obj) || obj == this.f12722b;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f12723c) {
                return;
            }
            this.f12722b.start();
        }
    }

    C3081p() {
    }

    /* renamed from: a */
    public static C3081p m308a() {
        return C3082a.f12719a;
    }

    /* renamed from: b */
    public void m307b(AbstractC3092w.AbstractC3094b abstractC3094b) {
        synchronized (this) {
            this.f12718a.m305a(abstractC3094b);
        }
    }
}
