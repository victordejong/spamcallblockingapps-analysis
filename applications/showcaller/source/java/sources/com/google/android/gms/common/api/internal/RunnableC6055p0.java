package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.api.internal.p0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/p0.class */
public final class RunnableC6055p0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ BinderC6062s0 f19338d;

    public RunnableC6055p0(BinderC6062s0 binderC6062s0) {
        this.f19338d = binderC6062s0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6060r0 abstractC6060r0;
        abstractC6060r0 = this.f19338d.f19357k;
        abstractC6060r0.mo17284c(new ConnectionResult(4));
    }
}
