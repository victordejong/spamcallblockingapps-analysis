package p080e5;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: e5.b0 */
/* loaded from: classes-dex2jar.jar:e5/b0.class */
public class ThreadFactoryC2540b0 implements ThreadFactory {

    /* renamed from: a */
    public final /* synthetic */ String f8897a;

    /* renamed from: b */
    public final /* synthetic */ AtomicLong f8898b;

    /* renamed from: e5.b0$a */
    /* loaded from: classes-dex2jar.jar:e5/b0$a.class */
    public class C2541a extends AbstractRunnableC2542c {

        /* renamed from: a */
        public final /* synthetic */ Runnable f8899a;

        public C2541a(ThreadFactoryC2540b0 threadFactoryC2540b0, Runnable runnable) {
            this.f8899a = runnable;
        }

        @Override // p080e5.AbstractRunnableC2542c
        /* renamed from: b */
        public void mo3460b() {
            this.f8899a.run();
        }
    }

    public ThreadFactoryC2540b0(String str, AtomicLong atomicLong) {
        this.f8897a = str;
        this.f8898b = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(new C2541a(this, runnable));
        newThread.setName(this.f8897a + this.f8898b.getAndIncrement());
        return newThread;
    }
}
