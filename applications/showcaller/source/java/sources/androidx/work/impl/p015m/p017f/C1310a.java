package androidx.work.impl.p015m.p017f;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.work.AbstractC1404j;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.f.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/a.class */
public class C1310a extends AbstractC1312c<Boolean> {

    /* renamed from: i */
    private static final String f5520i = AbstractC1404j.m30159f("BatteryChrgTracker");

    public C1310a(Context context, AbstractC1399a abstractC1399a) {
        super(context, abstractC1399a);
    }

    /* renamed from: j */
    private boolean m30326j(Intent intent) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            int intExtra = intent.getIntExtra("status", -1);
            z = true;
            if (intExtra != 2) {
                if (intExtra == 5) {
                    z = true;
                }
                z = false;
            }
        } else {
            if (intent.getIntExtra("plugged", 0) != 0) {
                z = true;
            }
            z = false;
        }
        return z;
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1312c
    /* renamed from: g */
    public IntentFilter mo30314g() {
        IntentFilter intentFilter = new IntentFilter();
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.CHARGING");
            intentFilter.addAction("android.os.action.DISCHARGING");
        } else {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        return intentFilter;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0088, code lost:
        if (r0.equals("android.os.action.DISCHARGING") == false) goto L7;
     */
    @Override // androidx.work.impl.p015m.p017f.AbstractC1312c
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo30313h(android.content.Context r9, android.content.Intent r10) {
        /*
            r8 = this;
            r0 = r10
            java.lang.String r0 = r0.getAction()
            r10 = r0
            r0 = r10
            if (r0 != 0) goto La
            return
        La:
            androidx.work.j r0 = androidx.work.AbstractC1404j.m30161c()
            r9 = r0
            java.lang.String r0 = androidx.work.impl.p015m.p017f.C1310a.f5520i
            r11 = r0
            r0 = 1
            r12 = r0
            r0 = r9
            r1 = r11
            java.lang.String r2 = "Received %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r10
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.mo30158a(r1, r2, r3)
            r0 = r10
            int r0 = r0.hashCode()
            switch(r0) {
                case -1886648615: goto L8e;
                case -54942926: goto L82;
                case 948344062: goto L70;
                case 1019184907: goto L5e;
                default: goto L58;
            }
        L58:
            r0 = -1
            r12 = r0
            goto L9d
        L5e:
            r0 = r10
            java.lang.String r1 = "android.intent.action.ACTION_POWER_CONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6a
            goto L58
        L6a:
            r0 = 3
            r12 = r0
            goto L9d
        L70:
            r0 = r10
            java.lang.String r1 = "android.os.action.CHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L7c
            goto L58
        L7c:
            r0 = 2
            r12 = r0
            goto L9d
        L82:
            r0 = r10
            java.lang.String r1 = "android.os.action.DISCHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9d
            goto L58
        L8e:
            r0 = r10
            java.lang.String r1 = "android.intent.action.ACTION_POWER_DISCONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9a
            goto L58
        L9a:
            r0 = 0
            r12 = r0
        L9d:
            r0 = r12
            switch(r0) {
                case 0: goto Ldd;
                case 1: goto Ld3;
                case 2: goto Lc9;
                case 3: goto Lbf;
                default: goto Lbc;
            }
        Lbc:
            goto Le4
        Lbf:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.m30322d(r1)
            goto Le4
        Lc9:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.m30322d(r1)
            goto Le4
        Ld3:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.m30322d(r1)
            goto Le4
        Ldd:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.m30322d(r1)
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p015m.p017f.C1310a.mo30313h(android.content.Context, android.content.Intent):void");
    }

    /* renamed from: i */
    public Boolean mo30315b() {
        Intent registerReceiver = this.f5527c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            AbstractC1404j.m30161c().mo30157b(f5520i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        return Boolean.valueOf(m30326j(registerReceiver));
    }
}
