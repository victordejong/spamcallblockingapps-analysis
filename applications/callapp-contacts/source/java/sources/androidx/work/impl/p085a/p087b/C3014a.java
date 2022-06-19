package androidx.work.impl.p085a.p087b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.work.AbstractC3145k;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.b.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/a.class */
public final class C3014a extends AbstractC3016c<Boolean> {

    /* renamed from: d */
    private static final String f11178d = AbstractC3145k.m39275a("BatteryChrgTracker");

    public C3014a(Context context, AbstractC3119a abstractC3119a) {
        super(context, abstractC3119a);
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3016c
    /* renamed from: a */
    public final IntentFilter mo39446a() {
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
        if (r0.equals("android.os.action.DISCHARGING") == false) goto L7;
     */
    @Override // androidx.work.impl.p085a.p087b.AbstractC3016c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo39445a(android.content.Intent r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r0 = r0.getAction()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto La
            return
        La:
            androidx.work.k r0 = androidx.work.AbstractC3145k.m39277a()
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
                case -1886648615: goto L83;
                case -54942926: goto L77;
                case 948344062: goto L66;
                case 1019184907: goto L55;
                default: goto L50;
            }
        L50:
            r0 = -1
            r8 = r0
            goto L91
        L55:
            r0 = r7
            java.lang.String r1 = "android.intent.action.ACTION_POWER_CONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L61
            goto L50
        L61:
            r0 = 3
            r8 = r0
            goto L91
        L66:
            r0 = r7
            java.lang.String r1 = "android.os.action.CHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L72
            goto L50
        L72:
            r0 = 2
            r8 = r0
            goto L91
        L77:
            r0 = r7
            java.lang.String r1 = "android.os.action.DISCHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L91
            goto L50
        L83:
            r0 = r7
            java.lang.String r1 = "android.intent.action.ACTION_POWER_DISCONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L8f
            goto L50
        L8f:
            r0 = 0
            r8 = r0
        L91:
            r0 = r8
            switch(r0) {
                case 0: goto Lcb;
                case 1: goto Lc3;
                case 2: goto Lbb;
                case 3: goto Lb3;
                default: goto Lb0;
            }
        Lb0:
            goto Ld2
        Lb3:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.m39453a(r1)
            return
        Lbb:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.m39453a(r1)
            return
        Lc3:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.m39453a(r1)
            return
        Lcb:
            r0 = r6
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.m39453a(r1)
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p085a.p087b.C3014a.mo39445a(android.content.Intent):void");
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: b */
    public final /* synthetic */ Object mo39444b() {
        int intExtra;
        Intent registerReceiver = this.f11185b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            AbstractC3145k.m39277a().mo39273a(f11178d, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        if (Build.VERSION.SDK_INT < 23 ? registerReceiver.getIntExtra("plugged", 0) != 0 : !((intExtra = registerReceiver.getIntExtra("status", -1)) != 2 && intExtra != 5)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
