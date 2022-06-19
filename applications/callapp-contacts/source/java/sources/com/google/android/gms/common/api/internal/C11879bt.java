package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* renamed from: com.google.android.gms.common.api.internal.bt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bt.class */
final class C11879bt extends AbstractC11843ak {

    /* renamed from: a */
    final /* synthetic */ Dialog f39313a;

    /* renamed from: b */
    final /* synthetic */ RunnableC11880bu f39314b;

    public C11879bt(RunnableC11880bu runnableC11880bu, Dialog dialog) {
        this.f39314b = runnableC11880bu;
        this.f39313a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11843ak
    /* renamed from: a */
    public final void mo19377a() {
        this.f39314b.f39315a.m19368f();
        if (this.f39313a.isShowing()) {
            this.f39313a.dismiss();
        }
    }
}
