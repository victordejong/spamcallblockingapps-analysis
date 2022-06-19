package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvt.class */
public final class bvt extends bvs<azi> {

    /* renamed from: a */
    private final afq f44879a;

    /* renamed from: b */
    private final aqz.C12188a f44880b;

    /* renamed from: c */
    private final byb f44881c;

    /* renamed from: d */
    private final awm f44882d;

    public bvt(afq afqVar, aqz.C12188a c12188a, byb bybVar, awm awmVar) {
        this.f44879a = afqVar;
        this.f44880b = c12188a;
        this.f44881c = bybVar;
        this.f44882d = awmVar;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    /* renamed from: a */
    protected final dbt<azi> mo17600a(cpo cpoVar, Bundle bundle) {
        bah mo18710n = this.f44879a.mo18710n();
        aqz.C12188a c12188a = this.f44880b;
        c12188a.f43077b = cpoVar;
        c12188a.f43078c = bundle;
        return mo18710n.mo18278a(c12188a.m18450a()).mo18277a(this.f44882d).mo18276a(this.f44881c).mo18279a().mo18273b().m18504b();
    }
}
