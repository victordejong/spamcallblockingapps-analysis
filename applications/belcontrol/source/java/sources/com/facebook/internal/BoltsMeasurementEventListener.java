package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/BoltsMeasurementEventListener.class */
public class BoltsMeasurementEventListener extends BroadcastReceiver {

    /* renamed from: b */
    public static BoltsMeasurementEventListener f2512b;

    /* renamed from: a */
    public Context f2513a;

    public BoltsMeasurementEventListener(Context context) {
        this.f2513a = context.getApplicationContext();
    }

    /* renamed from: b */
    public static BoltsMeasurementEventListener m5126b(Context context) {
        BoltsMeasurementEventListener boltsMeasurementEventListener = f2512b;
        if (boltsMeasurementEventListener != null) {
            return boltsMeasurementEventListener;
        }
        BoltsMeasurementEventListener boltsMeasurementEventListener2 = new BoltsMeasurementEventListener(context);
        f2512b = boltsMeasurementEventListener2;
        boltsMeasurementEventListener2.m5125c();
        return f2512b;
    }

    /* renamed from: a */
    public final void m5127a() {
        nf.b(this.f2513a).e(this);
    }

    /* renamed from: c */
    public final void m5125c() {
        nf.b(this.f2513a).c(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    public void finalize() {
        try {
            m5127a();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        xj0 xj0Var = new xj0(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        xj0Var.f(str, bundle);
    }
}
