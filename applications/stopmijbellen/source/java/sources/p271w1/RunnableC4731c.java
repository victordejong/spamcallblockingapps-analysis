package p271w1;

import android.app.Notification;
import androidx.work.impl.foreground.SystemForegroundService;
/* renamed from: w1.c */
/* loaded from: classes-dex2jar.jar:w1/c.class */
public class RunnableC4731c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f14592a;

    /* renamed from: b */
    public final /* synthetic */ Notification f14593b;

    /* renamed from: c */
    public final /* synthetic */ SystemForegroundService f14594c;

    public RunnableC4731c(SystemForegroundService systemForegroundService, int i, Notification notification) {
        this.f14594c = systemForegroundService;
        this.f14592a = i;
        this.f14593b = notification;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14594c.f2714e.notify(this.f14592a, this.f14593b);
    }
}
