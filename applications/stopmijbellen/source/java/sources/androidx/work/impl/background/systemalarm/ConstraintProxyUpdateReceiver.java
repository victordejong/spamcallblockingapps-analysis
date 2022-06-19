package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p197p1.C4006j;
import p292y1.C4960g;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f2663a = AbstractC3824h.m1773e("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$a.class */
    public class RunnableC0693a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Intent f2664a;

        /* renamed from: b */
        public final /* synthetic */ Context f2665b;

        /* renamed from: c */
        public final /* synthetic */ BroadcastReceiver.PendingResult f2666c;

        public RunnableC0693a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f2664a = intent;
            this.f2665b = context;
            this.f2666c = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f2664a.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f2664a.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f2664a.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f2664a.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC3824h.m1774c().mo1772a(ConstraintProxyUpdateReceiver.f2663a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                C4960g.m174a(this.f2665b, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C4960g.m174a(this.f2665b, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C4960g.m174a(this.f2665b, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C4960g.m174a(this.f2665b, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f2666c.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            AbstractC3824h.m1774c().mo1772a(f2663a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
            return;
        }
        ((C0009b) C4006j.m1535c(context).f12585d).f8a.execute(new RunnableC0693a(this, intent, context, goAsync()));
    }
}
