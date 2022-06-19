package p1727n3.p1834m0.p1835c0.p1843r;

import androidx.work.impl.foreground.SystemForegroundService;
/* renamed from: n3.m0.c0.r.e */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/r/e.class */
public class RunnableC26741e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f74875a;

    /* renamed from: b */
    public final /* synthetic */ SystemForegroundService f74876b;

    public RunnableC26741e(SystemForegroundService systemForegroundService, int i) {
        this.f74876b = systemForegroundService;
        this.f74875a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f74876b.e.cancel(this.f74875a);
    }
}
