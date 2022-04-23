package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvr.class */
public final class bvr extends bvs<alq> {

    /* renamed from: a  reason: collision with root package name */
    private final afq f25216a;

    /* renamed from: b  reason: collision with root package name */
    private final aqz.a f25217b;

    /* renamed from: c  reason: collision with root package name */
    private final byb f25218c;

    /* renamed from: d  reason: collision with root package name */
    private final awm f25219d;
    private final bba e;
    private final atx f;
    private final ViewGroup g;

    public bvr(afq afqVar, aqz.a aVar, byb bybVar, awm awmVar, bba bbaVar, atx atxVar, ViewGroup viewGroup) {
        this.f25216a = afqVar;
        this.f25217b = aVar;
        this.f25218c = bybVar;
        this.f25219d = awmVar;
        this.e = bbaVar;
        this.f = atxVar;
        this.g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    protected final dbt<alq> a(cpo cpoVar, Bundle bundle) {
        amq i = this.f25216a.i();
        aqz.a aVar = this.f25217b;
        aVar.f23804b = cpoVar;
        aVar.f23805c = bundle;
        return i.a(aVar.a()).a(this.f25219d).a(this.f25218c).a(this.e).a(new anl(this.f)).a(new alp(this.g)).a().b().b();
    }
}
