package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.ev */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ev.class */
public final class C4287ev {

    /* renamed from: a */
    private final AbstractC4290ey f18814a;

    public C4287ev(AbstractC4290ey abstractC4290ey) {
        C2662s.m13981a(abstractC4290ey);
        this.f18814a = abstractC4290ey;
    }

    /* renamed from: a */
    public static boolean m4609a(Context context) {
        boolean z;
        C2662s.m13981a(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                z = false;
            } else {
                ActivityInfo receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0);
                z = false;
                if (receiverInfo != null) {
                    z = false;
                    if (receiverInfo.enabled) {
                        z = true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final void m4608a(Context context, Intent intent) {
        C4296fd m4565a = C4296fd.m4565a(context, null, null);
        C4263dy mo4030v = m4565a.mo4030v();
        if (intent == null) {
            mo4030v.m4662e().m4654a("Receiver called with null intent");
            return;
        }
        m4565a.mo4026y();
        String action = intent.getAction();
        mo4030v.m4657j().m4653a("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            }
            mo4030v.m4662e().m4654a("Install Referrer Broadcasts are deprecated");
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        mo4030v.m4657j().m4654a("Starting wakeful intent.");
        this.f18814a.mo4591b(context, className);
    }
}
