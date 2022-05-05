package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import androidx.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfn.class */
public final class zzfn {

    /* renamed from: a */
    private final zzfm f9238a;

    public zzfn(zzfm zzfmVar) {
        Preconditions.m14523k(zzfmVar);
        this.f9238a = zzfmVar;
    }

    /* renamed from: b */
    public static boolean m11423b(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.m14523k(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null) {
                return false;
            }
            return receiverInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @MainThread
    /* renamed from: a */
    public final void m11424a(Context context, Intent intent) {
        zzer c = zzfv.m11367d(context, null, null).mo11081c();
        if (intent == null) {
            c.m11557G().m11540a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        c.m11552L().m11539b("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            c.m11552L().m11540a("Starting wakeful intent.");
            this.f9238a.mo11425a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            c.m11557G().m11540a("Install Referrer Broadcasts are deprecated");
        }
    }
}
