package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
/* renamed from: h.i.c.n.d.h.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/e.class */
public class C9540e {

    /* renamed from: a */
    public final Float f21717a;

    /* renamed from: b */
    public final boolean f21718b;

    public C9540e(Float f, boolean z) {
        this.f21718b = z;
        this.f21717a = f;
    }

    /* renamed from: a */
    public static C9540e m14955a(Context context) {
        boolean z;
        Float f = null;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            z = m14952b(registerReceiver);
            f = m14954a(registerReceiver);
        } else {
            z = false;
        }
        return new C9540e(f, z);
    }

    /* renamed from: a */
    public static Float m14954a(Intent intent) {
        int intExtra = intent.getIntExtra(IapPlanRealmObject.LEVEL, -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }

    /* renamed from: b */
    public static boolean m14952b(Intent intent) {
        int intExtra = intent.getIntExtra("status", -1);
        boolean z = false;
        if (intExtra == -1) {
            return false;
        }
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public Float m14956a() {
        return this.f21717a;
    }

    /* renamed from: b */
    public int m14953b() {
        Float f;
        if (!this.f21718b || (f = this.f21717a) == null) {
            return 1;
        }
        return ((double) f.floatValue()) < 0.99d ? 2 : 3;
    }
}
