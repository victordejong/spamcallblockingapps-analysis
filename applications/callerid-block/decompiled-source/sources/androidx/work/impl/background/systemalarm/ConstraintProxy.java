package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0555f;
import androidx.work.C0548b;
import androidx.work.NetworkType;
import androidx.work.impl.p009l.C0589j;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f2991a = AbstractC0555f.m11738f("ConstraintProxy");

    ConstraintProxy() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m11734a(Context context, List<C0589j> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Iterator<C0589j> it = list.iterator();
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
            C0548b bVar = it.next().f3094j;
            z = z5 | bVar.m11780f();
            z2 = z6 | bVar.m11779g();
            z3 = z7 | bVar.m11777i();
            z4 = z8 | (bVar.m11784b() != NetworkType.NOT_REQUIRED);
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
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m11733a(context, z, z2, z3, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC0555f.m11741c().m11743a(f2991a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(b.b(context));
    }
}
