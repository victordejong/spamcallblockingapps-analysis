package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.AbstractC1404j;
import androidx.work.impl.C1289j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f5321a = AbstractC1404j.m30159f("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC1404j.m30161c().mo30158a(f5321a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            context.startService(C1253b.m30491e(context));
            return;
        }
        try {
            C1289j.m30392k(context).m30383t(goAsync());
        } catch (IllegalStateException e) {
            AbstractC1404j.m30161c().mo30157b(f5321a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
