package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.p052i.p053a.C1179a;
import com.facebook.appevents.C10097m;
import com.facebook.internal.p299b.p301b.C10249a;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/BoltsMeasurementEventListener.class */
public class BoltsMeasurementEventListener extends BroadcastReceiver {

    /* renamed from: a */
    private static BoltsMeasurementEventListener f33633a;

    /* renamed from: b */
    private Context f33634b;

    private BoltsMeasurementEventListener(Context context) {
        this.f33634b = context.getApplicationContext();
    }

    /* renamed from: a */
    public static BoltsMeasurementEventListener m23270a(Context context) {
        if (C10249a.m23108a(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            BoltsMeasurementEventListener boltsMeasurementEventListener = f33633a;
            if (boltsMeasurementEventListener != null) {
                return boltsMeasurementEventListener;
            }
            BoltsMeasurementEventListener boltsMeasurementEventListener2 = new BoltsMeasurementEventListener(context);
            f33633a = boltsMeasurementEventListener2;
            if (!C10249a.m23108a(boltsMeasurementEventListener2)) {
                C1179a.m43410a(boltsMeasurementEventListener2.f33634b).m43411a(boltsMeasurementEventListener2, new IntentFilter("com.parse.bolts.measurement_event"));
            }
            return f33633a;
        } catch (Throwable th) {
            C10249a.m23106a(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    protected void finalize() throws Throwable {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if (!C10249a.m23108a(this)) {
                try {
                    C1179a.m43410a(this.f33634b).m43412a(this);
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
            super.finalize();
        } catch (Throwable th2) {
            C10249a.m23106a(th2, this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            C10097m c10097m = new C10097m(context);
            String str = "bf_" + intent.getStringExtra("event_name");
            Bundle bundleExtra = intent.getBundleExtra("event_args");
            Bundle bundle = new Bundle();
            for (String str2 : bundleExtra.keySet()) {
                bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", VerificationLanguage.REGION_PREFIX).replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
            }
            c10097m.m23414a(str, bundle);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
