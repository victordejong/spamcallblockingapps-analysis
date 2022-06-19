package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvv.class */
public final class bvv extends bvs<bhu> {

    /* renamed from: a */
    private final afq f44890a;

    /* renamed from: b */
    private final aqz.C12188a f44891b;

    /* renamed from: c */
    private final awm f44892c;

    public bvv(afq afqVar, aqz.C12188a c12188a, awm awmVar) {
        this.f44890a = afqVar;
        this.f44891b = c12188a;
        this.f44892c = awmVar;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    /* renamed from: a */
    protected final dbt<bhu> mo17600a(cpo cpoVar, Bundle bundle) {
        bhz mo18704q = this.f44890a.mo18704q();
        aqz.C12188a c12188a = this.f44891b;
        c12188a.f43077b = cpoVar;
        c12188a.f43078c = bundle;
        return mo18704q.mo17836a(c12188a.m18450a()).mo17835a(this.f44892c).mo17837a().mo17838c().m18504b();
    }
}
