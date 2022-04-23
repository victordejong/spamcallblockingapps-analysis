package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvt.class */
public final class bvt extends bvs<azi> {

    /* renamed from: a  reason: collision with root package name */
    private final afq f25220a;

    /* renamed from: b  reason: collision with root package name */
    private final aqz.a f25221b;

    /* renamed from: c  reason: collision with root package name */
    private final byb f25222c;

    /* renamed from: d  reason: collision with root package name */
    private final awm f25223d;

    public bvt(afq afqVar, aqz.a aVar, byb bybVar, awm awmVar) {
        this.f25220a = afqVar;
        this.f25221b = aVar;
        this.f25222c = bybVar;
        this.f25223d = awmVar;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    protected final dbt<azi> a(cpo cpoVar, Bundle bundle) {
        bah n = this.f25220a.n();
        aqz.a aVar = this.f25221b;
        aVar.f23804b = cpoVar;
        aVar.f23805c = bundle;
        return n.a(aVar.a()).a(this.f25223d).a(this.f25222c).a().b().b();
    }
}
