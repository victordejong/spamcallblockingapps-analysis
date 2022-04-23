package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import p012b.p035f.C0782b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zay.class */
public class zay extends zal {

    /* renamed from: f */
    public final C0782b<ApiKey<?>> f23300f;

    /* renamed from: g */
    public final GoogleApiManager f23301g;

    @Override // com.google.android.gms.common.api.internal.zal
    /* renamed from: a */
    public final void mo17457a(ConnectionResult connectionResult, int i) {
        this.f23301g.m17698b(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: c */
    public void mo17456c() {
        super.mo17456c();
        m17451i();
    }

    @Override // com.google.android.gms.common.api.internal.zal, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo17455d() {
        super.mo17455d();
        m17451i();
    }

    @Override // com.google.android.gms.common.api.internal.zal, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public void mo17454e() {
        super.mo17454e();
        this.f23301g.m17695b(this);
    }

    @Override // com.google.android.gms.common.api.internal.zal
    /* renamed from: f */
    public final void mo17453f() {
        this.f23301g.m17699b();
    }

    /* renamed from: h */
    public final C0782b<ApiKey<?>> m17452h() {
        return this.f23300f;
    }

    /* renamed from: i */
    public final void m17451i() {
        if (!this.f23300f.isEmpty()) {
            this.f23301g.m17700a(this);
        }
    }
}
