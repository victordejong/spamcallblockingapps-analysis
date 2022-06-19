package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.AbstractC3145k;
import androidx.work.impl.C3068j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f11228a = AbstractC3145k.m39275a("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC3145k.m39277a();
        String.format("Received intent %s", intent);
        if (Build.VERSION.SDK_INT < 23) {
            context.startService(C3033b.m39422b(context));
            return;
        }
        try {
            C3068j.m39359b(context).m39363a(goAsync());
        } catch (IllegalStateException e) {
            AbstractC3145k.m39277a().mo39273a(f11228a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
