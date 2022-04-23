package androidx.work.impl.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/a.class */
public final class a extends c<Boolean> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f5997d = k.a("BatteryChrgTracker");

    public a(Context context, androidx.work.impl.utils.b.a aVar) {
        super(context, aVar);
    }

    @Override // androidx.work.impl.a.b.c
    public final IntentFilter a() {
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
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007d, code lost:
        if (r0.equals("android.os.action.DISCHARGING") == false) goto L_0x0050;
     */
    @Override // androidx.work.impl.a.b.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Intent r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r0 = r0.getAction()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000a
            return
        L_0x000a:
            androidx.work.k r0 = androidx.work.k.a()
            r0 = 1
            r8 = r0
            java.lang.String r0 = "Received %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r7
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r0 = r7
            int r0 = r0.hashCode()
            r0 = r7
            int r0 = r0.hashCode()
            switch(r0) {
                case -1886648615: goto L_0x0083;
                case -54942926: goto L_0x0077;
                case 948344062: goto L_0x0066;
                case 1019184907: goto L_0x0055;
                default: goto L_0x0050;
            }
        L_0x0050:
            r0 = -1
            r8 = r0
            goto L_0x0091
        L_0x0055:
            r0 = r7
            java.lang.String r1 = "android.intent.action.ACTION_POWER_CONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0061
            goto L_0x0050
        L_0x0061:
            r0 = 3
            r8 = r0
            goto L_0x0091
        L_0x0066:
            r0 = r7
            java.lang.String r1 = "android.os.action.CHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0072
            goto L_0x0050
        L_0x0072:
            r0 = 2
            r8 = r0
            goto L_0x0091
        L_0x0077:
            r0 = r7
            java.lang.String r1 = "android.os.action.DISCHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0091
            goto L_0x0050
        L_0x0083:
            r0 = r7
            java.lang.String r1 = "android.intent.action.ACTION_POWER_DISCONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x008f
            goto L_0x0050
        L_0x008f:
            r0 = 0
            r8 = r0
        L_0x0091:
            r0 = r8
            switch(r0) {
                case 0: goto L_0x00cb;
                case 1: goto L_0x00c3;
                case 2: goto L_0x00bb;
                case 3: goto L_0x00b3;
                default: goto L_0x00b0;
            }
        L_0x00b0:
            goto L_0x00d2
        L_0x00b3:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.a(r1)
            return
        L_0x00bb:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.a(r1)
            return
        L_0x00c3:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.a(r1)
            return
        L_0x00cb:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.a(r1)
        L_0x00d2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.a.b.a.a(android.content.Intent):void");
    }

    @Override // androidx.work.impl.a.b.d
    public final /* synthetic */ Object b() {
        int intExtra;
        Intent registerReceiver = this.f6003b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            k.a().a(f5997d, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        if (Build.VERSION.SDK_INT < 23 ? registerReceiver.getIntExtra("plugged", 0) != 0 : (intExtra = registerReceiver.getIntExtra("status", -1)) == 2 || intExtra == 5) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
