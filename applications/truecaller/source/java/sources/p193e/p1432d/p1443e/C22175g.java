package p193e.p1432d.p1443e;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: e.d.e.g */
/* loaded from: classes-dex2jar.jar:e/d/e/g.class */
public class C22175g implements AbstractC22193r {

    /* renamed from: a */
    public final Executor f61619a;

    /* renamed from: e.d.e.g$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/g$a.class */
    public class ExecutorC22176a implements Executor {

        /* renamed from: a */
        public final /* synthetic */ Handler f61620a;

        public ExecutorC22176a(C22175g c22175g, Handler handler) {
            this.f61620a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f61620a.post(runnable);
        }
    }

    /* renamed from: e.d.e.g$b */
    /* loaded from: classes-dex2jar.jar:e/d/e/g$b.class */
    public static class RunnableC22177b implements Runnable {

        /* renamed from: a */
        public final AbstractC22184o f61621a;

        /* renamed from: b */
        public final C22190q f61622b;

        /* renamed from: c */
        public final Runnable f61623c;

        public RunnableC22177b(AbstractC22184o abstractC22184o, C22190q c22190q, Runnable runnable) {
            this.f61621a = abstractC22184o;
            this.f61622b = c22190q;
            this.f61623c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f61621a.isCanceled()) {
                this.f61621a.finish("canceled-at-delivery");
                return;
            }
            C22190q c22190q = this.f61622b;
            C22197v c22197v = c22190q.f61656c;
            if (c22197v == null) {
                this.f61621a.deliverResponse(c22190q.f61654a);
            } else {
                this.f61621a.deliverError(c22197v);
            }
            if (this.f61622b.f61657d) {
                this.f61621a.addMarker("intermediate-response");
            } else {
                this.f61621a.finish("done");
            }
            Runnable runnable = this.f61623c;
            if (runnable == null) {
                return;
            }
            runnable.run();
        }
    }

    public C22175g(Handler handler) {
        this.f61619a = new ExecutorC22176a(this, handler);
    }

    /* renamed from: a */
    public void m8488a(AbstractC22184o<?> abstractC22184o, C22190q<?> c22190q) {
        abstractC22184o.markDelivered();
        abstractC22184o.addMarker("post-response");
        this.f61619a.execute(new RunnableC22177b(abstractC22184o, c22190q, null));
    }
}
