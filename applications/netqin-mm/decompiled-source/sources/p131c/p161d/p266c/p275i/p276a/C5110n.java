package p131c.p161d.p266c.p275i.p276a;

import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.DirectExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.i.a.n */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/n.class */
public final class C5110n {

    /* renamed from: c.d.c.i.a.n$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/n$a.class */
    public static final class ExecutorC5111a implements Executor {

        /* renamed from: a */
        public boolean f17698a = true;

        /* renamed from: b */
        public final /* synthetic */ Executor f17699b;

        /* renamed from: c */
        public final /* synthetic */ AbstractFuture f17700c;

        /* renamed from: c.d.c.i.a.n$a$a */
        /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/n$a$a.class */
        public class RunnableC5112a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Runnable f17701a;

            public RunnableC5112a(Runnable runnable) {
                this.f17701a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                ExecutorC5111a.this.f17698a = false;
                this.f17701a.run();
            }
        }

        public ExecutorC5111a(Executor executor, AbstractFuture abstractFuture) {
            this.f17699b = executor;
            this.f17700c = abstractFuture;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f17699b.execute(new RunnableC5112a(runnable));
            } catch (RejectedExecutionException e) {
                if (this.f17698a) {
                    this.f17700c.mo276a((Throwable) e);
                }
            }
        }
    }

    /* renamed from: a */
    public static Executor m24504a() {
        return DirectExecutor.INSTANCE;
    }

    /* renamed from: a */
    public static Executor m24503a(Executor executor, AbstractFuture<?> abstractFuture) {
        C4933n.m24795a(executor);
        C4933n.m24795a(abstractFuture);
        return executor == m24504a() ? executor : new ExecutorC5111a(executor, abstractFuture);
    }
}
