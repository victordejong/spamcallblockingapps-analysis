package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.j;
import androidx.work.impl.utils.d;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static final String f6030a = k.a("ConstrntProxyUpdtRecvr");

    public static Intent a(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            k.a();
            String.format("Ignoring unknown action %s", action);
            return;
        }
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        j.b(context).f6119d.a(new Runnable() { // from class: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    boolean booleanExtra = intent.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                    boolean booleanExtra2 = intent.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                    boolean booleanExtra3 = intent.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                    boolean booleanExtra4 = intent.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                    k.a();
                    String str = ConstraintProxyUpdateReceiver.f6030a;
                    String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4));
                    d.a(context, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                    d.a(context, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                    d.a(context, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                    d.a(context, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
                } finally {
                    goAsync.finish();
                }
            }
        });
    }
}
