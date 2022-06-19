package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvr.class */
public final class bvr extends bvs<alq> {

    /* renamed from: a */
    private final afq f44872a;

    /* renamed from: b */
    private final aqz.C12188a f44873b;

    /* renamed from: c */
    private final byb f44874c;

    /* renamed from: d */
    private final awm f44875d;

    /* renamed from: e */
    private final bba f44876e;

    /* renamed from: f */
    private final atx f44877f;

    /* renamed from: g */
    private final ViewGroup f44878g;

    public bvr(afq afqVar, aqz.C12188a c12188a, byb bybVar, awm awmVar, bba bbaVar, atx atxVar, ViewGroup viewGroup) {
        this.f44872a = afqVar;
        this.f44873b = c12188a;
        this.f44874c = bybVar;
        this.f44875d = awmVar;
        this.f44876e = bbaVar;
        this.f44877f = atxVar;
        this.f44878g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.bvs
    /* renamed from: a */
    protected final dbt<alq> mo17600a(cpo cpoVar, Bundle bundle) {
        amq mo18720i = this.f44872a.mo18720i();
        aqz.C12188a c12188a = this.f44873b;
        c12188a.f43077b = cpoVar;
        c12188a.f43078c = bundle;
        return mo18720i.mo18553a(c12188a.m18450a()).mo18552a(this.f44875d).mo18550a(this.f44874c).mo18551a(this.f44876e).mo18554a(new anl(this.f44877f)).mo18555a(new alp(this.f44878g)).mo18556a().mo18558b().m18504b();
    }
}
