package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import java.util.Objects;
import p186o1.AbstractC3824h;
import p197p1.C4006j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f2667a = AbstractC3824h.m1773e("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC3824h.m1774c().mo1772a(f2667a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            String str = C0694a.f2671d;
            Intent intent2 = new Intent(context, SystemAlarmService.class);
            intent2.setAction("ACTION_RESCHEDULE");
            context.startService(intent2);
            return;
        }
        try {
            C4006j m1535c = C4006j.m1535c(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            Objects.requireNonNull(m1535c);
            synchronized (C4006j.f12581l) {
                m1535c.f12590i = goAsync;
                if (m1535c.f12589h) {
                    goAsync.finish();
                    m1535c.f12590i = null;
                }
            }
        } catch (IllegalStateException e) {
            AbstractC3824h.m1774c().mo1771b(f2667a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
