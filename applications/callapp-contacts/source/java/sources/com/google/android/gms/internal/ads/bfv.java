package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfv.class */
public final class bfv {

    /* renamed from: a */
    final cpo f43837a;

    /* renamed from: b */
    final Executor f43838b;

    /* renamed from: c */
    final bif f43839c;

    public bfv(cpo cpoVar, Executor executor, bif bifVar) {
        this.f43837a = cpoVar;
        this.f43838b = executor;
        this.f43839c = bifVar;
    }

    /* renamed from: a */
    public final void m17881a(adt adtVar) {
        adtVar.mo13772a("/video", C12590gs.f49323m);
        adtVar.mo13772a("/videoMeta", C12590gs.f49324n);
        adtVar.mo13772a("/precache", new acz());
        adtVar.mo13772a("/delayPageLoaded", C12590gs.f49327q);
        adtVar.mo13772a("/instrument", C12590gs.f49325o);
        adtVar.mo13772a("/log", C12590gs.f49318h);
        adtVar.mo13772a("/videoClicked", C12590gs.f49319i);
        adtVar.mo13808B().mo18778m();
        adtVar.mo13772a("/click", C12590gs.f49314d);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42710bT)).booleanValue()) {
            adtVar.mo13772a("/getNativeAdViewSignals", C12590gs.f49330t);
        }
        if (this.f43837a.f46323c != null) {
            adtVar.mo13808B().mo18786a(true);
            adtVar.mo13772a("/open", new C12615hq(null, null, null, null, null));
        } else {
            adtVar.mo13808B().mo18786a(false);
        }
        if (zzr.zzlt().m14044a(adtVar.getContext())) {
            adtVar.mo13772a("/logScionEvent", new C12613ho(adtVar.getContext()));
        }
    }
}
