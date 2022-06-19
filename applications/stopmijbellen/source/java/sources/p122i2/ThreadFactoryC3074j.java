package p122i2;

import com.android.billingclient.api.C0870b;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: i2.j */
/* loaded from: classes-dex2jar.jar:i2/j.class */
public final class ThreadFactoryC3074j implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f10408a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f10409b = new AtomicInteger(1);

    public ThreadFactoryC3074j(C0870b c0870b) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f10408a.newThread(runnable);
        int andIncrement = this.f10409b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
