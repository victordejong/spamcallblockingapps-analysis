package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.api.internal.az */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/az.class */
public final class RunnableC11858az implements Runnable {

    /* renamed from: a */
    final /* synthetic */ BinderC11862bc f39266a;

    public RunnableC11858az(BinderC11862bc binderC11862bc) {
        this.f39266a = binderC11862bc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC11861bb abstractC11861bb;
        abstractC11861bb = this.f39266a.f39280h;
        abstractC11861bb.mo19395b(new ConnectionResult(4));
    }
}
