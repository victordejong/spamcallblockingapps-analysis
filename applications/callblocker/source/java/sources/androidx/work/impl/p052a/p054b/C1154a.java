package androidx.work.impl.p052a.p054b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.b.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/a.class */
public class C1154a extends AbstractC1156c<Boolean> {

    /* renamed from: d */
    private static final String f3949d = AbstractC1293l.m17541a("BatteryChrgTracker");

    public C1154a(Context context, AbstractC1271a abstractC1271a) {
        super(context, abstractC1271a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        if (r0 == 5) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m17851a(android.content.Intent r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 0
            r7 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L27
            r0 = r5
            java.lang.String r1 = "status"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r8 = r0
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L23
            r0 = r7
            r6 = r0
            r0 = r8
            r1 = 5
            if (r0 != r1) goto L25
        L23:
            r0 = 1
            r6 = r0
        L25:
            r0 = r6
            return r0
        L27:
            r0 = r5
            java.lang.String r1 = "plugged"
            r2 = 0
            int r0 = r0.getIntExtra(r1, r2)
            if (r0 == 0) goto L34
        L31:
            goto L25
        L34:
            r0 = 0
            r6 = r0
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p052a.p054b.C1154a.m17851a(android.content.Intent):boolean");
    }

    /* renamed from: a */
    public Boolean mo17837c() {
        Boolean bool = null;
        Intent registerReceiver = this.f3956b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            AbstractC1293l.m17543a().mo17536e(f3949d, "getInitialState - null intent received", new Throwable[0]);
        } else {
            bool = Boolean.valueOf(m17851a(registerReceiver));
        }
        return bool;
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1156c
    /* renamed from: a */
    public void mo17839a(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f3949d, String.format("Received %s", action), new Throwable[0]);
        boolean z = true;
        switch (action.hashCode()) {
            case -1886648615:
                if (action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                    z = true;
                    break;
                }
                break;
            case -54942926:
                if (action.equals("android.os.action.DISCHARGING")) {
                    z = true;
                    break;
                }
                break;
            case 948344062:
                if (action.equals("android.os.action.CHARGING")) {
                    z = false;
                    break;
                }
                break;
            case 1019184907:
                if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                m17848a((C1154a) true);
                return;
            case true:
                m17848a((C1154a) false);
                return;
            case true:
                m17848a((C1154a) true);
                return;
            case true:
                m17848a((C1154a) false);
                return;
            default:
                return;
        }
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1156c
    /* renamed from: b */
    public IntentFilter mo17838b() {
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
}
