package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.mopub.mobileads.PangleAdapterConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gg.class */
public final class gg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f29688a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29689b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gg(gv gvVar, Bundle bundle) {
        this.f29689b = gvVar;
        this.f29688a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gv gvVar = this.f29689b;
        Bundle bundle = this.f29688a;
        gvVar.S_();
        gvVar.k();
        o.a(bundle);
        o.a(bundle.getString("name"));
        if (gvVar.t.r()) {
            try {
                gvVar.t.m().a(new zzaa(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("origin"), gvVar.t.g.d(null, dc.aA) ? new zzkl(bundle.getString("name"), 0L, null, "") : new zzkl(bundle.getString("name"), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), gvVar.t.g().a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true)));
            } catch (IllegalArgumentException e) {
            }
        } else {
            gvVar.t.c().k.a("Conditional property not cleared since app measurement is disabled");
        }
    }
}
