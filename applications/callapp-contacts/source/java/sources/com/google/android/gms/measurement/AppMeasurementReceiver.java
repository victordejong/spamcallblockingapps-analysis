package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.C13947do;
import com.google.android.gms.measurement.internal.C13968ei;
import com.google.android.gms.measurement.internal.C13979es;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements C13968ei.AbstractC13969a {

    /* renamed from: a */
    private C13968ei f51182a;

    @Override // com.google.android.gms.measurement.internal.C13968ei.AbstractC13969a
    /* renamed from: b */
    public final void mo12033b(Context context, Intent intent) {
        m43340a(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f51182a == null) {
            this.f51182a = new C13968ei(this);
        }
        C13968ei c13968ei = this.f51182a;
        C13947do mo11661c = C13979es.m11997a(context, (zzz) null, (Long) null).mo11661c();
        if (intent == null) {
            mo11661c.f51398f.m12092a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        mo11661c.f51403k.m12091a("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            }
            mo11661c.f51398f.m12092a("Install Referrer Broadcasts are deprecated");
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        mo11661c.f51403k.m12092a("Starting wakeful intent.");
        c13968ei.f51483a.mo12033b(context, className);
    }
}
