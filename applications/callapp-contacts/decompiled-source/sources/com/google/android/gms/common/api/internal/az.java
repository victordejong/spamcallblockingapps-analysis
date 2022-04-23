package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/az.class */
public final class az implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bc f22669a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(bc bcVar) {
        this.f22669a = bcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bb bbVar;
        bbVar = this.f22669a.h;
        bbVar.b(new ConnectionResult(4));
    }
}
