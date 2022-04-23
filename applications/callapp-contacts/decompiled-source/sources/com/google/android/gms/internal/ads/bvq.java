package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvq.class */
public final class bvq extends bvs<anv> {

    /* renamed from: a  reason: collision with root package name */
    private final afq f25212a;

    /* renamed from: b  reason: collision with root package name */
    private final bba f25213b;

    /* renamed from: c  reason: collision with root package name */
    private final aqz.a f25214c;

    /* renamed from: d  reason: collision with root package name */
    private final awm f25215d;

    public bvq(afq afqVar, bba bbaVar, aqz.a aVar, awm awmVar) {
        this.f25212a = afqVar;
        this.f25213b = bbaVar;
        this.f25214c = aVar;
        this.f25215d = awmVar;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    protected final dbt<anv> a(cpo cpoVar, Bundle bundle) {
        bbd p = this.f25212a.p();
        aqz.a aVar = this.f25214c;
        aVar.f23804b = cpoVar;
        aVar.f23805c = bundle;
        return p.a(aVar.a()).a(this.f25215d).a(this.f25213b).a(new alp(null)).a().a().b();
    }
}
