package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.f6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f6.class */
final class RunnableC2254f6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Bundle f10186b;

    /* renamed from: c */
    final /* synthetic */ v6 f10187c;

    RunnableC2254f6(v6 v6Var, Bundle bundle) {
        this.f10187c = v6Var;
        this.f10186b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v6 v6Var = this.f10187c;
        Bundle bundle = this.f10186b;
        v6Var.f();
        v6Var.h();
        C1581h.m8347h(bundle);
        String string = bundle.getString(EZBlackList.NAME);
        String string2 = bundle.getString("origin");
        C1581h.m8351d(string);
        C1581h.m8351d(string2);
        C1581h.m8347h(bundle.get("value"));
        if (!((m5) v6Var).a.i()) {
            ((m5) v6Var).a.t().w().m3876a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzas J = ((m5) v6Var).a.G().J(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, false);
            ((m5) v6Var).a.R().M(new zzaa(bundle.getString("app_id"), string2, zzklVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), ((m5) v6Var).a.G().J(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, false), bundle.getLong("trigger_timeout"), J, bundle.getLong("time_to_live"), ((m5) v6Var).a.G().J(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
