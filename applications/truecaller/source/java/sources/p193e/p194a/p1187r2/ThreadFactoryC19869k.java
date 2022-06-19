package p193e.p194a.p1187r2;

import java.util.concurrent.ThreadFactory;
/* renamed from: e.a.r2.k */
/* loaded from: classes5-dex2jar.jar:e/a/r2/k.class */
public class ThreadFactoryC19869k implements ThreadFactory {

    /* renamed from: a */
    public final String f56283a;

    public ThreadFactoryC19869k(String str) {
        this.f56283a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f56283a);
    }
}
