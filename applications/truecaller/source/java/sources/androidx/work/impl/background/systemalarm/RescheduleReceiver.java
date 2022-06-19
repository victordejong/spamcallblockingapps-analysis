package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.C26702l;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1577a = AbstractC26839p.m1295e("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC26839p.m1296c().mo1294a(f1577a, String.format("Received intent %s", intent), new Throwable[0]);
        try {
            C26702l m1431n = C26702l.m1431n(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            Objects.requireNonNull(m1431n);
            synchronized (C26702l.f74722l) {
                m1431n.f74731i = goAsync;
                if (m1431n.f74730h) {
                    goAsync.finish();
                    m1431n.f74731i = null;
                }
            }
        } catch (IllegalStateException e) {
            AbstractC26839p.m1296c().mo1293b(f1577a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
