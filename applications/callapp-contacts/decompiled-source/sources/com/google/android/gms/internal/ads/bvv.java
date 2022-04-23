package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvv.class */
public final class bvv extends bvs<bhu> {

    /* renamed from: a  reason: collision with root package name */
    private final afq f25228a;

    /* renamed from: b  reason: collision with root package name */
    private final aqz.a f25229b;

    /* renamed from: c  reason: collision with root package name */
    private final awm f25230c;

    public bvv(afq afqVar, aqz.a aVar, awm awmVar) {
        this.f25228a = afqVar;
        this.f25229b = aVar;
        this.f25230c = awmVar;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    protected final dbt<bhu> a(cpo cpoVar, Bundle bundle) {
        bhz q = this.f25228a.q();
        aqz.a aVar = this.f25229b;
        aVar.f23804b = cpoVar;
        aVar.f23805c = bundle;
        return q.a(aVar.a()).a(this.f25230c).a().c().b();
    }
}
