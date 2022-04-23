package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.Cdo;
import com.google.android.gms.measurement.internal.ei;
import com.google.android.gms.measurement.internal.es;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements ei.a {

    /* renamed from: a  reason: collision with root package name */
    private ei f29389a;

    @Override // com.google.android.gms.measurement.internal.ei.a
    public final void b(Context context, Intent intent) {
        a(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f29389a == null) {
            this.f29389a = new ei(this);
        }
        ei eiVar = this.f29389a;
        Cdo c2 = es.a(context, (zzz) null, (Long) null).c();
        if (intent == null) {
            c2.f.a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        c2.k.a("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            c2.k.a("Starting wakeful intent.");
            eiVar.f29561a.b(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            c2.f.a("Install Referrer Broadcasts are deprecated");
        }
    }
}
