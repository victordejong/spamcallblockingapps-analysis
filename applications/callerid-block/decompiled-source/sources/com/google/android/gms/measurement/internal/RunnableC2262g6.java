package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.g6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g6.class */
final class RunnableC2262g6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Bundle f10211b;

    /* renamed from: c */
    final /* synthetic */ v6 f10212c;

    RunnableC2262g6(v6 v6Var, Bundle bundle) {
        this.f10212c = v6Var;
        this.f10211b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v6 v6Var = this.f10212c;
        Bundle bundle = this.f10211b;
        v6Var.f();
        v6Var.h();
        C1581h.m8347h(bundle);
        C1581h.m8351d(bundle.getString(EZBlackList.NAME));
        if (((m5) v6Var).a.i()) {
            try {
                ((m5) v6Var).a.R().M(new zzaa(bundle.getString("app_id"), bundle.getString("origin"), ((m5) v6Var).a.z().w((String) null, C2232c3.f10009A0) ? new zzkl(bundle.getString(EZBlackList.NAME), 0L, (Object) null, "") : new zzkl(bundle.getString(EZBlackList.NAME), 0L, (Object) null, (String) null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), (zzas) null, bundle.getLong("trigger_timeout"), (zzas) null, bundle.getLong("time_to_live"), ((m5) v6Var).a.G().J(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false)));
            } catch (IllegalArgumentException e) {
            }
        } else {
            ((m5) v6Var).a.t().w().m3876a("Conditional property not cleared since app measurement is disabled");
        }
    }
}
