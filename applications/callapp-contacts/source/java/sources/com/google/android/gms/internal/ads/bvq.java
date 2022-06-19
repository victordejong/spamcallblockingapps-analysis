package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvq.class */
public final class bvq extends bvs<anv> {

    /* renamed from: a */
    private final afq f44868a;

    /* renamed from: b */
    private final bba f44869b;

    /* renamed from: c */
    private final aqz.C12188a f44870c;

    /* renamed from: d */
    private final awm f44871d;

    public bvq(afq afqVar, bba bbaVar, aqz.C12188a c12188a, awm awmVar) {
        this.f44868a = afqVar;
        this.f44869b = bbaVar;
        this.f44870c = c12188a;
        this.f44871d = awmVar;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    /* renamed from: a */
    protected final dbt<anv> mo17600a(cpo cpoVar, Bundle bundle) {
        bbd mo18706p = this.f44868a.mo18706p();
        aqz.C12188a c12188a = this.f44870c;
        c12188a.f43077b = cpoVar;
        c12188a.f43078c = bundle;
        return mo18706p.mo18257a(c12188a.m18450a()).mo18256a(this.f44871d).mo18255a(this.f44869b).mo18258a(new alp(null)).mo18259a().mo18254a().m18504b();
    }
}
