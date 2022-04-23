package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfv.class */
public final class bfv {

    /* renamed from: a  reason: collision with root package name */
    final cpo f24357a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f24358b;

    /* renamed from: c  reason: collision with root package name */
    final bif f24359c;

    public bfv(cpo cpoVar, Executor executor, bif bifVar) {
        this.f24357a = cpoVar;
        this.f24358b = executor;
        this.f24359c = bifVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(adt adtVar) {
        adtVar.a("/video", gs.m);
        adtVar.a("/videoMeta", gs.n);
        adtVar.a("/precache", new acz());
        adtVar.a("/delayPageLoaded", gs.q);
        adtVar.a("/instrument", gs.o);
        adtVar.a("/log", gs.h);
        adtVar.a("/videoClicked", gs.i);
        adtVar.B().m();
        adtVar.a("/click", gs.f28024d);
        if (((Boolean) ekb.e().a(aq.bT)).booleanValue()) {
            adtVar.a("/getNativeAdViewSignals", gs.t);
        }
        if (this.f24357a.f26226c != null) {
            adtVar.B().a(true);
            adtVar.a("/open", new hq(null, null, null, null, null));
        } else {
            adtVar.B().a(false);
        }
        if (zzr.zzlt().a(adtVar.getContext())) {
            adtVar.a("/logScionEvent", new ho(adtVar.getContext()));
        }
    }
}
