package p130j0;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
/* renamed from: j0.m */
/* loaded from: classes-dex2jar.jar:j0/m.class */
public class ThreadFactoryC3159m implements ThreadFactory {

    /* renamed from: a */
    public String f10626a;

    /* renamed from: b */
    public int f10627b;

    /* renamed from: j0.m$a */
    /* loaded from: classes-dex2jar.jar:j0/m$a.class */
    public static class C3160a extends Thread {

        /* renamed from: a */
        public final int f10628a;

        public C3160a(Runnable runnable, String str, int i) {
            super(runnable, str);
            this.f10628a = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(this.f10628a);
            super.run();
        }
    }

    public ThreadFactoryC3159m(String str, int i) {
        this.f10626a = str;
        this.f10627b = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new C3160a(runnable, this.f10626a, this.f10627b);
    }
}
