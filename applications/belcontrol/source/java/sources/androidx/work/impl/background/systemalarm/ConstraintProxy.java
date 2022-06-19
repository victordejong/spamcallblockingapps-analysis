package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
public abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1668a = x40.f("ConstraintProxy");

    /* renamed from: a */
    public static void m5883a(Context context, List<c70> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Iterator<c70> it = list.iterator();
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
            s40 s40Var = it.next().f2171j;
            z = z5 | s40Var.f();
            z2 = z6 | s40Var.g();
            z3 = z7 | s40Var.i();
            z4 = z8 | (s40Var.b() != y40.a);
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
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m5882a(context, z, z2, z3, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        x40.c().a(f1668a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(s50.a(context));
    }
}
