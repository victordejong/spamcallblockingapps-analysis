package p250u2;

import java.util.concurrent.Executor;
import p134j4.C3260w0;
/* renamed from: u2.h */
/* loaded from: classes-dex2jar.jar:u2/h.class */
public class ExecutorC4467h implements Executor {

    /* renamed from: a */
    public final Executor f13845a;

    /* renamed from: u2.h$a */
    /* loaded from: classes-dex2jar.jar:u2/h$a.class */
    public static class RunnableC4468a implements Runnable {

        /* renamed from: a */
        public final Runnable f13846a;

        public RunnableC4468a(Runnable runnable) {
            this.f13846a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f13846a.run();
            } catch (Exception e) {
                C3260w0.m2478g("Executor");
            }
        }
    }

    public ExecutorC4467h(Executor executor) {
        this.f13845a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f13845a.execute(new RunnableC4468a(runnable));
    }
}
