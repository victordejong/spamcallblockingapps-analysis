package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.g6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/g6.class */
public final class RunnableC7723g6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Bundle f35290d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35291e;

    public RunnableC7723g6(C7893v6 c7893v6, Bundle bundle) {
        this.f35291e = c7893v6;
        this.f35290d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7893v6 c7893v6 = this.f35291e;
        Bundle bundle = this.f35290d;
        c7893v6.mo6113f();
        c7893v6.m6572h();
        C6155o.m17018j(bundle);
        C6155o.m17022f(bundle.getString(ShortCut.NAME));
        if (!c7893v6.f35460a.m6022i()) {
            c7893v6.f35460a.mo6047C().m6187u().m6216a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            c7893v6.f35460a.m6032R().m6280M(new zzaa(bundle.getString("app_id"), bundle.getString("origin"), c7893v6.f35460a.m6006y().m6471u(null, C7672c3.f35033C0) ? new zzkl(bundle.getString(ShortCut.NAME), 0L, null, "") : new zzkl(bundle.getString(ShortCut.NAME), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), c7893v6.f35460a.m6043G().m5992J(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
