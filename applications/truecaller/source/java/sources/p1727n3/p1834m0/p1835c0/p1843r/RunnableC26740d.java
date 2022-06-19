package p1727n3.p1834m0.p1835c0.p1843r;

import android.app.Notification;
import androidx.work.impl.foreground.SystemForegroundService;
/* renamed from: n3.m0.c0.r.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/r/d.class */
public class RunnableC26740d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f74872a;

    /* renamed from: b */
    public final /* synthetic */ Notification f74873b;

    /* renamed from: c */
    public final /* synthetic */ SystemForegroundService f74874c;

    public RunnableC26740d(SystemForegroundService systemForegroundService, int i, Notification notification) {
        this.f74874c = systemForegroundService;
        this.f74872a = i;
        this.f74873b = notification;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f74874c.e.notify(this.f74872a, this.f74873b);
    }
}
