package androidx.work.impl.foreground;

import android.app.Notification;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$a.class */
public class SystemForegroundService$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f1582a;

    /* renamed from: b */
    public final /* synthetic */ Notification f1583b;

    /* renamed from: c */
    public final /* synthetic */ int f1584c;

    /* renamed from: d */
    public final /* synthetic */ SystemForegroundService f1585d;

    public SystemForegroundService$a(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        this.f1585d = systemForegroundService;
        this.f1582a = i;
        this.f1583b = notification;
        this.f1584c = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1585d.startForeground(this.f1582a, this.f1583b, this.f1584c);
        } else {
            this.f1585d.startForeground(this.f1582a, this.f1583b);
        }
    }
}
