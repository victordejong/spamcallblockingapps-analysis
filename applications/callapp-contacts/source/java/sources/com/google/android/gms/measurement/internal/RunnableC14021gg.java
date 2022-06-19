package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.mopub.mobileads.PangleAdapterConfiguration;
/* renamed from: com.google.android.gms.measurement.internal.gg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gg.class */
public final class RunnableC14021gg implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Bundle f51692a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51693b;

    public RunnableC14021gg(C14036gv c14036gv, Bundle bundle) {
        this.f51693b = c14036gv;
        this.f51692a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14036gv c14036gv = this.f51693b;
        Bundle bundle = this.f51692a;
        c14036gv.mo11884S_();
        c14036gv.m12046k();
        C12045o.m19162a(bundle);
        C12045o.m19160a(bundle.getString("name"));
        if (!c14036gv.f51637t.m11979r()) {
            c14036gv.f51637t.mo11661c().f51403k.m12092a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            c14036gv.f51637t.m11984m().m11749a(new zzaa(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("origin"), c14036gv.f51637t.f51529g.m12061d(null, C13935dc.f51305aA) ? new zzkl(bundle.getString("name"), 0L, null, "") : new zzkl(bundle.getString("name"), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), c14036gv.f51637t.m11988g().m11582a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true)));
        } catch (IllegalArgumentException e) {
        }
    }
}
