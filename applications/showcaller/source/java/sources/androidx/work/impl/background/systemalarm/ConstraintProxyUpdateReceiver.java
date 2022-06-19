package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC1404j;
import androidx.work.impl.C1289j;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.utils.C1370d;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    static final String f5316a = AbstractC1404j.m30159f("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$a.class */
    class RunnableC1251a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Intent f5317d;

        /* renamed from: e */
        final /* synthetic */ Context f5318e;

        /* renamed from: f */
        final /* synthetic */ BroadcastReceiver.PendingResult f5319f;

        RunnableC1251a(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            ConstraintProxyUpdateReceiver.this = r4;
            this.f5317d = intent;
            this.f5318e = context;
            this.f5319f = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f5317d.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f5317d.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f5317d.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f5317d.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC1404j.m30161c().mo30158a(ConstraintProxyUpdateReceiver.f5316a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                C1370d.m30215a(this.f5318e, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C1370d.m30215a(this.f5318e, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C1370d.m30215a(this.f5318e, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C1370d.m30215a(this.f5318e, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f5319f.finish();
            }
        }
    }

    /* renamed from: a */
    public static Intent m30500a(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            AbstractC1404j.m30161c().mo30158a(f5316a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        } else {
            C1289j.m30392k(context).m30387p().mo30172b(new RunnableC1251a(intent, context, goAsync()));
        }
    }
}
