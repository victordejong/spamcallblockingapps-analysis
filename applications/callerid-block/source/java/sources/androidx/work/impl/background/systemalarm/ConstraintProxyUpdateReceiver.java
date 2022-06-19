package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0555f;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.h;
import androidx.work.impl.utils.C0599d;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    static final String f2992a = AbstractC0555f.m11738f("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$a.class */
    class RunnableC0561a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Intent f2993b;

        /* renamed from: c */
        final /* synthetic */ Context f2994c;

        /* renamed from: d */
        final /* synthetic */ BroadcastReceiver.PendingResult f2995d;

        RunnableC0561a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f2993b = intent;
            this.f2994c = context;
            this.f2995d = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f2993b.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f2993b.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f2993b.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f2993b.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC0555f.m11741c().m11743a(ConstraintProxyUpdateReceiver.f2992a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                C0599d.m11609a(this.f2994c, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C0599d.m11609a(this.f2994c, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C0599d.m11609a(this.f2994c, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C0599d.m11609a(this.f2994c, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f2995d.finish();
            }
        }
    }

    /* renamed from: a */
    public static Intent m11733a(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            AbstractC0555f.m11741c().m11743a(f2992a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        } else {
            h.j(context).o().m11594b(new RunnableC0561a(this, intent, context, goAsync()));
        }
    }
}
