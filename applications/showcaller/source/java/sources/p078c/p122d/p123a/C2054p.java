package p078c.p122d.p123a;

import com.liulishuo.filedownloader.message.C9369b;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import p078c.p122d.p123a.AbstractC2066x;
import p078c.p122d.p123a.p128i0.C2029b;
/* renamed from: c.d.a.p */
/* loaded from: classes2-dex2jar.jar:c/d/a/p.class */
class C2054p {

    /* renamed from: a */
    private final C2056b f7187a = new C2056b();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c.d.a.p$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/p$a.class */
    public static class C2055a {

        /* renamed from: a */
        private static final C2054p f7188a = new C2054p();

        static {
            C9369b.m885a().m883c(new C1983a0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c.d.a.p$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/p$b.class */
    public static class C2056b {

        /* renamed from: a */
        private ThreadPoolExecutor f7189a;

        /* renamed from: b */
        private LinkedBlockingQueue<Runnable> f7190b;

        C2056b() {
            m28159b();
        }

        /* renamed from: b */
        private void m28159b() {
            LinkedBlockingQueue<Runnable> linkedBlockingQueue = new LinkedBlockingQueue<>();
            this.f7190b = linkedBlockingQueue;
            this.f7189a = C2029b.m28264b(3, linkedBlockingQueue, "LauncherTask");
        }

        /* renamed from: a */
        public void m28160a(AbstractC2066x.AbstractC2068b abstractC2068b) {
            this.f7189a.execute(new RunnableC2057c(abstractC2068b));
        }
    }

    /* renamed from: c.d.a.p$c */
    /* loaded from: classes2-dex2jar.jar:c/d/a/p$c.class */
    public static class RunnableC2057c implements Runnable {

        /* renamed from: d */
        private final AbstractC2066x.AbstractC2068b f7191d;

        /* renamed from: e */
        private boolean f7192e = false;

        RunnableC2057c(AbstractC2066x.AbstractC2068b abstractC2068b) {
            this.f7191d = abstractC2068b;
        }

        public boolean equals(Object obj) {
            return super.equals(obj) || obj == this.f7191d;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f7192e) {
                return;
            }
            this.f7191d.start();
        }
    }

    C2054p() {
    }

    /* renamed from: a */
    public static C2054p m28163a() {
        return C2055a.f7188a;
    }

    /* renamed from: b */
    public void m28162b(AbstractC2066x.AbstractC2068b abstractC2068b) {
        synchronized (this) {
            this.f7187a.m28160a(abstractC2068b);
        }
    }
}
