package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.sdk.AppLovinEventTypes;
/* renamed from: c.d.e.l.d.h.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/e.class */
public class C5218e {

    /* renamed from: a */
    public final Float f17904a;

    /* renamed from: b */
    public final boolean f17905b;

    public C5218e(Float f, boolean z) {
        this.f17905b = z;
        this.f17904a = f;
    }

    /* renamed from: a */
    public static C5218e m24256a(Context context) {
        boolean z;
        Float f = null;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            z = m24253b(registerReceiver);
            f = m24255a(registerReceiver);
        } else {
            z = false;
        }
        return new C5218e(f, z);
    }

    /* renamed from: a */
    public static Float m24255a(Intent intent) {
        int intExtra = intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }

    /* renamed from: b */
    public static boolean m24253b(Intent intent) {
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
    public Float m24257a() {
        return this.f17904a;
    }

    /* renamed from: b */
    public int m24254b() {
        Float f;
        if (!this.f17905b || (f = this.f17904a) == null) {
            return 1;
        }
        return ((double) f.floatValue()) < 0.99d ? 2 : 3;
    }
}
