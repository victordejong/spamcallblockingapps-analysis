package p271w1;

import androidx.work.impl.foreground.SystemForegroundService;
/* renamed from: w1.d */
/* loaded from: classes-dex2jar.jar:w1/d.class */
public class RunnableC4732d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f14595a;

    /* renamed from: b */
    public final /* synthetic */ SystemForegroundService f14596b;

    public RunnableC4732d(SystemForegroundService systemForegroundService, int i) {
        this.f14596b = systemForegroundService;
        this.f14595a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14596b.f2714e.cancel(this.f14595a);
    }
}
