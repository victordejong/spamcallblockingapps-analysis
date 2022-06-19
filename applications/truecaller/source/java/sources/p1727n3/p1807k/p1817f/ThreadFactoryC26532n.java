package p1727n3.p1807k.p1817f;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
/* renamed from: n3.k.f.n */
/* loaded from: classes-dex2jar.jar:n3/k/f/n.class */
public class ThreadFactoryC26532n implements ThreadFactory {

    /* renamed from: a */
    public String f74343a;

    /* renamed from: b */
    public int f74344b;

    /* renamed from: n3.k.f.n$a */
    /* loaded from: classes-dex2jar.jar:n3/k/f/n$a.class */
    public static class C26533a extends Thread {

        /* renamed from: a */
        public final int f74345a;

        public C26533a(Runnable runnable, String str, int i) {
            super(runnable, str);
            this.f74345a = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(this.f74345a);
            super.run();
        }
    }

    public ThreadFactoryC26532n(String str, int i) {
        this.f74343a = str;
        this.f74344b = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new C26533a(runnable, this.f74343a, this.f74344b);
    }
}
