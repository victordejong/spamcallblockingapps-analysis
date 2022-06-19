package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.mopub.mobileads.PangleAdapterConfiguration;
/* renamed from: com.google.android.gms.measurement.internal.gf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gf.class */
public final class RunnableC14020gf implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Bundle f51690a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51691b;

    public RunnableC14020gf(C14036gv c14036gv, Bundle bundle) {
        this.f51691b = c14036gv;
        this.f51690a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14036gv c14036gv = this.f51691b;
        Bundle bundle = this.f51690a;
        c14036gv.mo11884S_();
        c14036gv.m12046k();
        C12045o.m19162a(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        C12045o.m19160a(string);
        C12045o.m19160a(string2);
        C12045o.m19162a(bundle.get("value"));
        if (!c14036gv.f51637t.m11979r()) {
            c14036gv.f51637t.mo11661c().f51403k.m12092a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzas m11582a = c14036gv.f51637t.m11988g().m11582a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true);
            c14036gv.f51637t.m11984m().m11749a(new zzaa(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), string2, zzklVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), c14036gv.f51637t.m11988g().m11582a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true), bundle.getLong("trigger_timeout"), m11582a, bundle.getLong("time_to_live"), c14036gv.f51637t.m11988g().m11582a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true)));
        } catch (IllegalArgumentException e) {
        }
    }
}
