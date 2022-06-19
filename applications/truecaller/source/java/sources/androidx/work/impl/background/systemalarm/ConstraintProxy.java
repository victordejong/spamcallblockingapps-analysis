package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1836p.p1838b.C26712b;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
public abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1572a = AbstractC26839p.m1295e("ConstraintProxy");

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy.class */
    public static class BatteryChargingProxy extends ConstraintProxy {
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy.class */
    public static class BatteryNotLowProxy extends ConstraintProxy {
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy.class */
    public static class NetworkStateProxy extends ConstraintProxy {
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy.class */
    public static class StorageNotLowProxy extends ConstraintProxy {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC26839p.m1296c().mo1294a(f1572a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(C26712b.m1414a(context));
    }
}
