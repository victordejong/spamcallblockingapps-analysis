package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzawo;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.d.b.d.g.a.r4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r4.class */
public final class ThreadFactoryC3980r4 implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f14867a = new AtomicInteger(1);

    public ThreadFactoryC3980r4(zzawo zzawoVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f14867a.getAndIncrement();
        StringBuilder sb = new StringBuilder(42);
        sb.append("AdWorker(SCION_TASK_EXECUTOR) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
