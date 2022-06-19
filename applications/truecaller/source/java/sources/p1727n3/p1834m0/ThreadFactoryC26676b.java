package p1727n3.p1834m0;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.b */
/* loaded from: classes-dex2jar.jar:n3/m0/b.class */
public class ThreadFactoryC26676b implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f74663a = new AtomicInteger(0);

    /* renamed from: b */
    public final /* synthetic */ boolean f74664b;

    public ThreadFactoryC26676b(C26678c c26678c, boolean z) {
        this.f74664b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        StringBuilder m8728C = C22128a.m8728C(this.f74664b ? "WM.task-" : "androidx.work-");
        m8728C.append(this.f74663a.incrementAndGet());
        return new Thread(runnable, m8728C.toString());
    }
}
