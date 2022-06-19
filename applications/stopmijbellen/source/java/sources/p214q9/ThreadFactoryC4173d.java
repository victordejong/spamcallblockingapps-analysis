package p214q9;

import java.util.concurrent.ThreadFactory;
/* renamed from: q9.d */
/* loaded from: classes2-dex2jar.jar:q9/d.class */
public class ThreadFactoryC4173d implements ThreadFactory {

    /* renamed from: a */
    public final /* synthetic */ String f13152a;

    /* renamed from: b */
    public final /* synthetic */ boolean f13153b;

    public ThreadFactoryC4173d(String str, boolean z) {
        this.f13152a = str;
        this.f13153b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f13152a);
        thread.setDaemon(this.f13153b);
        return thread;
    }
}
