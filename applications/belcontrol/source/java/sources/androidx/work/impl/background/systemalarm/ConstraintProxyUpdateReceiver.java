package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1669a = x40.f("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$a.class */
    public class RunnableC0219a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Intent f1670a;

        /* renamed from: b */
        public final /* synthetic */ Context f1671b;

        /* renamed from: c */
        public final /* synthetic */ BroadcastReceiver.PendingResult f1672c;

        public RunnableC0219a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f1670a = intent;
            this.f1671b = context;
            this.f1672c = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f1670a.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f1670a.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f1670a.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f1670a.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                x40.c().a(ConstraintProxyUpdateReceiver.f1669a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                m70.a(this.f1671b, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                m70.a(this.f1671b, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                m70.a(this.f1671b, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                m70.a(this.f1671b, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f1672c.finish();
            }
        }
    }

    /* renamed from: a */
    public static Intent m5882a(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            x40.c().a(f1669a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        } else {
            o50.j(context).o().b(new RunnableC0219a(this, intent, context, goAsync()));
        }
    }
}
