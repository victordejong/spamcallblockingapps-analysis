package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC1404j;
import androidx.work.C1234b;
import androidx.work.NetworkType;
import androidx.work.impl.p018n.C1344p;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
public abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f5315a = AbstractC1404j.m30159f("ConstraintProxy");

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
    public static void m30501a(Context context, List<C1344p> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Iterator<C1344p> it = list.iterator();
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            z = z5;
            z2 = z6;
            z3 = z7;
            z4 = z8;
            if (!it.hasNext()) {
                break;
            }
            C1234b c1234b = it.next().f5587l;
            z = z5 | c1234b.m30577f();
            z2 = z6 | c1234b.m30576g();
            z3 = z7 | c1234b.m30574i();
            z4 = z8 | (c1234b.m30581b() != NetworkType.NOT_REQUIRED);
            z5 = z;
            z6 = z2;
            z7 = z3;
            z8 = z4;
            if (z) {
                z5 = z;
                z6 = z2;
                z7 = z3;
                z8 = z4;
                if (z2) {
                    z5 = z;
                    z6 = z2;
                    z7 = z3;
                    z8 = z4;
                    if (z3) {
                        z5 = z;
                        z6 = z2;
                        z7 = z3;
                        z8 = z4;
                        if (z4) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m30500a(context, z, z2, z3, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC1404j.m30161c().mo30158a(f5315a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(C1253b.m30494a(context));
    }
}
