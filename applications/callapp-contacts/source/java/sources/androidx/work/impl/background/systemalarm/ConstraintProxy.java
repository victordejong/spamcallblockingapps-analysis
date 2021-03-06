package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC3145k;
import androidx.work.C2988b;
import androidx.work.EnumC3147l;
import androidx.work.impl.model.WorkSpec;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f11222a = AbstractC3145k.m39275a("ConstraintProxy");

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
    public static void m39434a(Context context, List<WorkSpec> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Iterator<WorkSpec> it2 = list.iterator();
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            z = z5;
            z2 = z6;
            z3 = z7;
            z4 = z8;
            if (!it2.hasNext()) {
                break;
            }
            C2988b c2988b = it2.next().constraints;
            boolean z9 = z5 | c2988b.f11133e;
            boolean z10 = z6 | c2988b.f11131c;
            boolean z11 = z7 | c2988b.f11134f;
            boolean z12 = z8 | (c2988b.f11130b != EnumC3147l.NOT_REQUIRED);
            z5 = z9;
            z6 = z10;
            z7 = z11;
            z8 = z12;
            if (z9) {
                z5 = z9;
                z6 = z10;
                z7 = z11;
                z8 = z12;
                if (z10) {
                    z5 = z9;
                    z6 = z10;
                    z7 = z11;
                    z8 = z12;
                    if (z11) {
                        z = z9;
                        z2 = z10;
                        z3 = z11;
                        z4 = z12;
                        if (z12) {
                            break;
                        }
                        z5 = z9;
                        z6 = z10;
                        z7 = z11;
                        z8 = z12;
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m39433a(context, z, z2, z3, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC3145k.m39277a();
        String.format("onReceive : %s", intent);
        context.startService(C3033b.m39426a(context));
    }
}
