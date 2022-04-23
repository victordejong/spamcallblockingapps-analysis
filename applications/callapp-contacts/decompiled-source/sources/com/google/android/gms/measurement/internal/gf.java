package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.mopub.mobileads.PangleAdapterConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gf.class */
public final class gf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f29686a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29687b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(gv gvVar, Bundle bundle) {
        this.f29687b = gvVar;
        this.f29686a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gv gvVar = this.f29687b;
        Bundle bundle = this.f29686a;
        gvVar.S_();
        gvVar.k();
        o.a(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        o.a(string);
        o.a(string2);
        o.a(bundle.get("value"));
        if (!gvVar.t.r()) {
            gvVar.t.c().k.a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzas a2 = gvVar.t.g().a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true);
            gvVar.t.m().a(new zzaa(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), string2, zzklVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), gvVar.t.g().a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true), bundle.getLong("trigger_timeout"), a2, bundle.getLong("time_to_live"), gvVar.t.g().a(bundle.getString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true)));
        } catch (IllegalArgumentException e) {
        }
    }
}
