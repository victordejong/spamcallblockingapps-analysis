package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.j4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j4.class */
public final class C7757j4 {

    /* renamed from: a */
    private final AbstractC7745i4 f35354a;

    public C7757j4(AbstractC7745i4 abstractC7745i4) {
        C6155o.m17018j(abstractC7745i4);
        this.f35354a = abstractC7745i4;
    }

    /* renamed from: a */
    public final void m6339a(Context context, Intent intent) {
        C7858s4 m6025f = C7858s4.m6025f(context, null, null);
        C7813o3 mo6047C = m6025f.mo6047C();
        if (intent == null) {
            mo6047C.m6192p().m6216a("Receiver called with null intent");
            return;
        }
        m6025f.mo6028c();
        String action = intent.getAction();
        mo6047C.m6187u().m6215b("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            }
            mo6047C.m6192p().m6216a("Install Referrer Broadcasts are deprecated");
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        mo6047C.m6187u().m6216a("Starting wakeful intent.");
        this.f35354a.mo6353a(context, className);
    }
}
