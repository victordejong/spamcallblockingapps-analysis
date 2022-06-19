package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC1293l;
import androidx.work.C1129c;
import androidx.work.EnumC1295m;
import androidx.work.impl.p055b.C1191p;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
public abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f4067a = AbstractC1293l.m17541a("ConstraintProxy");

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy.class */
    public static class BatteryChargingProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy.class */
    public static class BatteryNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy.class */
    public static class NetworkStateProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy.class */
    public static class StorageNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    ConstraintProxy() {
    }

    /* renamed from: a */
    public static void m17767a(Context context, List<C1191p> list) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (C1191p c1191p : list) {
            C1129c c1129c = c1191p.f4022j;
            z4 |= c1129c.m17936d();
            z3 |= c1129c.m17941b();
            z2 |= c1129c.m17934e();
            z = (c1129c.m17946a() != EnumC1295m.NOT_REQUIRED) | z;
            if (z4 && z3 && z2 && z) {
                break;
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m17766a(context, z4, z3, z2, z));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC1293l.m17543a().mo17539b(f4067a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(C1214b.m17759a(context));
    }
}
