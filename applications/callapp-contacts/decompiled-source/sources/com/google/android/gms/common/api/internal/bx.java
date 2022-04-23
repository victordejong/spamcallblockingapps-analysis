package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bx.class */
public final class bx {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BasePendingResult f22713a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bx(BasePendingResult basePendingResult, bw bwVar) {
        this.f22713a = basePendingResult;
    }

    protected final void finalize() throws Throwable {
        m mVar;
        mVar = this.f22713a.j;
        BasePendingResult.b(mVar);
        super.finalize();
    }
}
