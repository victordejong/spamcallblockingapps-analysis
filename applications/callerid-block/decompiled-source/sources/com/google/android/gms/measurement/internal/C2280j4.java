package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.zzz;
/* renamed from: com.google.android.gms.measurement.internal.j4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/j4.class */
public final class C2280j4 {

    /* renamed from: a */
    private final AbstractC2274i4 f10245a;

    public C2280j4(AbstractC2274i4 i4Var) {
        C1581h.m8347h(i4Var);
        this.f10245a = i4Var;
    }

    /* renamed from: a */
    public final void m3886a(Context context, Intent intent) {
        s4 f = s4.f(context, (zzz) null, (Long) null);
        o3 t = f.t();
        if (intent == null) {
            t.p().m3876a("Receiver called with null intent");
            return;
        }
        f.a();
        String action = intent.getAction();
        t.w().m3875b("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            t.w().m3876a("Starting wakeful intent.");
            this.f10245a.m3889a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            t.p().m3876a("Install Referrer Broadcasts are deprecated");
        }
    }
}
