package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.AbstractC0555f;
import androidx.work.impl.h;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f2996a = AbstractC0555f.m11738f("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC0555f.m11741c().m11743a(f2996a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            context.startService(b.e(context));
            return;
        }
        try {
            h.j(context).s(goAsync());
        } catch (IllegalStateException e) {
            AbstractC0555f.m11741c().m11742b(f2996a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[0]);
        }
    }
}
