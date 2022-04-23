package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.j;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6035a = k.a("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        k.a();
        String.format("Received intent %s", intent);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                j.b(context).a(goAsync());
            } catch (IllegalStateException e) {
                k.a().a(f6035a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
        } else {
            context.startService(b.b(context));
        }
    }
}
