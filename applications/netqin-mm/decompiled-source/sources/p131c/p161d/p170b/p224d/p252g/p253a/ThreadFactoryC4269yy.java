package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.d.b.d.g.a.yy */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/yy.class */
public final class ThreadFactoryC4269yy implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f16240a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f16240a.getAndIncrement();
        StringBuilder sb = new StringBuilder(25);
        sb.append("AdWorker(NG) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
