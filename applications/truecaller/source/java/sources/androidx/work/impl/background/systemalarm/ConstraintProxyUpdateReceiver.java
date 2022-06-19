package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26787h;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1573a = AbstractC26839p.m1295e("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$a.class */
    public class RunnableC0421a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Intent f1574a;

        /* renamed from: b */
        public final /* synthetic */ Context f1575b;

        /* renamed from: c */
        public final /* synthetic */ BroadcastReceiver.PendingResult f1576c;

        public RunnableC0421a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f1574a = intent;
            this.f1575b = context;
            this.f1576c = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f1574a.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f1574a.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f1574a.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f1574a.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC26839p.m1296c().mo1294a(ConstraintProxyUpdateReceiver.f1573a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                C26787h.m1330a(this.f1575b, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C26787h.m1330a(this.f1575b, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C26787h.m1330a(this.f1575b, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C26787h.m1330a(this.f1575b, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f1576c.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            AbstractC26839p.m1296c().mo1294a(f1573a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
            return;
        }
        ((C26822b) C26702l.m1431n(context).f74726d).f75051a.execute(new RunnableC0421a(this, intent, context, goAsync()));
    }
}
