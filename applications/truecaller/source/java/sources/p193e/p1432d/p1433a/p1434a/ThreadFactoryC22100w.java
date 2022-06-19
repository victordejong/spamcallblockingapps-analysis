package p193e.p1432d.p1433a.p1434a;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: e.d.a.a.w */
/* loaded from: classes-dex2jar.jar:e/d/a/a/w.class */
public final class ThreadFactoryC22100w implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f61412a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f61413b = new AtomicInteger(1);

    public ThreadFactoryC22100w(C22068e c22068e) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f61412a.newThread(runnable);
        int andIncrement = this.f61413b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
