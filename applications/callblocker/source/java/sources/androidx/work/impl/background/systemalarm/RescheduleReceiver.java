package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.impl.C1249i;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f4073a = AbstractC1293l.m17541a("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC1293l.m17543a().mo17539b(f4073a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            context.startService(C1214b.m17752b(context));
            return;
        }
        try {
            C1249i.m17656b(context).m17663a(goAsync());
        } catch (IllegalStateException e) {
            AbstractC1293l.m17543a().mo17536e(f4073a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[0]);
        }
    }
}
