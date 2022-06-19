package p260v1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
/* renamed from: v1.a */
/* loaded from: classes-dex2jar.jar:v1/a.class */
public class C4576a extends AbstractC4578c<Boolean> {

    /* renamed from: i */
    public static final String f14151i = AbstractC3824h.m1773e("BatteryChrgTracker");

    public C4576a(Context context, AbstractC0008a abstractC0008a) {
        super(context, abstractC0008a);
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: a */
    public Object mo754a() {
        int intExtra;
        Boolean bool = null;
        Intent registerReceiver = this.f14158b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            AbstractC3824h.m1774c().mo1771b(f14151i, "getInitialState - null intent received", new Throwable[0]);
        } else {
            if (Build.VERSION.SDK_INT < 23 ? registerReceiver.getIntExtra("plugged", 0) != 0 : !((intExtra = registerReceiver.getIntExtra("status", -1)) != 2 && intExtra != 5)) {
                z = true;
            }
            bool = Boolean.valueOf(z);
        }
        return bool;
    }

    @Override // p260v1.AbstractC4578c
    /* renamed from: f */
    public IntentFilter mo753f() {
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
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
        if (r0.equals("android.intent.action.ACTION_POWER_DISCONNECTED") == false) goto L18;
     */
    @Override // p260v1.AbstractC4578c
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo752g(android.content.Context r9, android.content.Intent r10) {
        /*
            r8 = this;
            r0 = r10
            java.lang.String r0 = r0.getAction()
            r9 = r0
            r0 = r9
            if (r0 != 0) goto La
            return
        La:
            o1.h r0 = p186o1.AbstractC3824h.m1774c()
            r10 = r0
            java.lang.String r0 = p260v1.C4576a.f14151i
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r10
            r1 = r11
            java.lang.String r2 = "Received %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r9
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.mo1772a(r1, r2, r3)
            r0 = r9
            int r0 = r0.hashCode()
            switch(r0) {
                case -1886648615: goto L91;
                case -54942926: goto L7f;
                case 948344062: goto L6d;
                case 1019184907: goto L5b;
                default: goto L58;
            }
        L58:
            goto L9a
        L5b:
            r0 = r9
            java.lang.String r1 = "android.intent.action.ACTION_POWER_CONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L67
            goto L9a
        L67:
            r0 = 3
            r12 = r0
            goto L9d
        L6d:
            r0 = r9
            java.lang.String r1 = "android.os.action.CHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L79
            goto L9a
        L79:
            r0 = 2
            r12 = r0
            goto L9d
        L7f:
            r0 = r9
            java.lang.String r1 = "android.os.action.DISCHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L8b
            goto L9a
        L8b:
            r0 = 1
            r12 = r0
            goto L9d
        L91:
            r0 = r9
            java.lang.String r1 = "android.intent.action.ACTION_POWER_DISCONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9d
        L9a:
            r0 = -1
            r12 = r0
        L9d:
            r0 = r12
            if (r0 == 0) goto Ld5
            r0 = r12
            r1 = 1
            if (r0 == r1) goto Lcb
            r0 = r12
            r1 = 2
            if (r0 == r1) goto Lc1
            r0 = r12
            r1 = 3
            if (r0 == r1) goto Lb7
            goto Ldc
        Lb7:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.m759c(r1)
            goto Ldc
        Lc1:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.m759c(r1)
            goto Ldc
        Lcb:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.m759c(r1)
            goto Ldc
        Ld5:
            r0 = r8
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.m759c(r1)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p260v1.C4576a.mo752g(android.content.Context, android.content.Intent):void");
    }
}
