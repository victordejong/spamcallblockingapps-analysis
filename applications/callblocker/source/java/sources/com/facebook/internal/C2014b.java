package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.p040h.p041a.C0735a;
import com.facebook.p094a.C1927m;
/* renamed from: com.facebook.internal.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/b.class */
public class C2014b extends BroadcastReceiver {

    /* renamed from: a */
    private static C2014b f5971a;

    /* renamed from: b */
    private Context f5972b;

    private C2014b(Context context) {
        this.f5972b = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C2014b m15653a(Context context) {
        C2014b c2014b;
        if (f5971a != null) {
            c2014b = f5971a;
        } else {
            f5971a = new C2014b(context);
            f5971a.m15654a();
            c2014b = f5971a;
        }
        return c2014b;
    }

    /* renamed from: a */
    private void m15654a() {
        C0735a.m19534a(this.f5972b).m19535a(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    /* renamed from: b */
    private void m15652b() {
        C0735a.m19534a(this.f5972b).m19536a(this);
    }

    protected void finalize() {
        try {
            m15652b();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1927m c1927m = new C1927m(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        c1927m.m15858a(str, bundle);
    }
}
