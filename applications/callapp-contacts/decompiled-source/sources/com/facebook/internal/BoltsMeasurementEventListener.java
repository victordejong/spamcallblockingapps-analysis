package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.facebook.appevents.m;
import com.facebook.internal.b.b.a;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/BoltsMeasurementEventListener.class */
public class BoltsMeasurementEventListener extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static BoltsMeasurementEventListener f19795a;

    /* renamed from: b  reason: collision with root package name */
    private Context f19796b;

    private BoltsMeasurementEventListener(Context context) {
        this.f19796b = context.getApplicationContext();
    }

    public static BoltsMeasurementEventListener a(Context context) {
        if (a.a(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            BoltsMeasurementEventListener boltsMeasurementEventListener = f19795a;
            if (boltsMeasurementEventListener != null) {
                return boltsMeasurementEventListener;
            }
            BoltsMeasurementEventListener boltsMeasurementEventListener2 = new BoltsMeasurementEventListener(context);
            f19795a = boltsMeasurementEventListener2;
            if (!a.a(boltsMeasurementEventListener2)) {
                androidx.i.a.a.a(boltsMeasurementEventListener2.f19796b).a(boltsMeasurementEventListener2, new IntentFilter("com.parse.bolts.measurement_event"));
            }
            return f19795a;
        } catch (Throwable th) {
            a.a(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    protected void finalize() throws Throwable {
        if (!a.a(this)) {
            try {
                if (!a.a(this)) {
                    try {
                        androidx.i.a.a.a(this.f19796b).a(this);
                    } catch (Throwable th) {
                        a.a(th, this);
                    }
                }
                super.finalize();
            } catch (Throwable th2) {
                a.a(th2, this);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!a.a(this)) {
            try {
                m mVar = new m(context);
                String str = "bf_" + intent.getStringExtra("event_name");
                Bundle bundleExtra = intent.getBundleExtra("event_args");
                Bundle bundle = new Bundle();
                for (String str2 : bundleExtra.keySet()) {
                    bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", VerificationLanguage.REGION_PREFIX).replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
                }
                mVar.a(str, bundle);
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }
}
