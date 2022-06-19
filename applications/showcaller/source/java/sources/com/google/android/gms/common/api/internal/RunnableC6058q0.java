package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;
/* renamed from: com.google.android.gms.common.api.internal.q0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/q0.class */
final class RunnableC6058q0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zak f19346d;

    /* renamed from: e */
    final /* synthetic */ BinderC6062s0 f19347e;

    public RunnableC6058q0(BinderC6062s0 binderC6062s0, zak zakVar) {
        this.f19347e = binderC6062s0;
        this.f19346d = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BinderC6062s0.m17272V4(this.f19347e, this.f19346d);
    }
}
