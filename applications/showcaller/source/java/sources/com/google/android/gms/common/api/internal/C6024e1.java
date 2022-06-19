package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* renamed from: com.google.android.gms.common.api.internal.e1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/e1.class */
final class C6024e1 extends AbstractC6032h0 {

    /* renamed from: a */
    final /* synthetic */ Dialog f19256a;

    /* renamed from: b */
    final /* synthetic */ RunnableC6027f1 f19257b;

    public C6024e1(RunnableC6027f1 runnableC6027f1, Dialog dialog) {
        this.f19257b = runnableC6027f1;
        this.f19256a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6032h0
    /* renamed from: a */
    public final void mo17323a() {
        this.f19257b.f19286e.m17329l();
        if (this.f19256a.isShowing()) {
            this.f19256a.dismiss();
        }
    }
}
