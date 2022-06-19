package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.f6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f6.class */
public final class RunnableC7711f6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Bundle f35250d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35251e;

    public RunnableC7711f6(C7893v6 c7893v6, Bundle bundle) {
        this.f35251e = c7893v6;
        this.f35250d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7893v6 c7893v6 = this.f35251e;
        Bundle bundle = this.f35250d;
        c7893v6.mo6113f();
        c7893v6.m6572h();
        C6155o.m17018j(bundle);
        String string = bundle.getString(ShortCut.NAME);
        String string2 = bundle.getString("origin");
        C6155o.m17022f(string);
        C6155o.m17022f(string2);
        C6155o.m17018j(bundle.get("value"));
        if (!c7893v6.f35460a.m6022i()) {
            c7893v6.f35460a.mo6047C().m6187u().m6216a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzas m5992J = c7893v6.f35460a.m6043G().m5992J(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, false);
            c7893v6.f35460a.m6032R().m6280M(new zzaa(bundle.getString("app_id"), string2, zzklVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), c7893v6.f35460a.m6043G().m5992J(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, false), bundle.getLong("trigger_timeout"), m5992J, bundle.getLong("time_to_live"), c7893v6.f35460a.m6043G().m5992J(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
