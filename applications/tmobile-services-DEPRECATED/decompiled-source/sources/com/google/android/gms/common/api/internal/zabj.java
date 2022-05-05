package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabj.class */
final class zabj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ ConnectionResult f7235f;

    /* renamed from: g */
    private final /* synthetic */ GoogleApiManager.zaa f7236g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabj(GoogleApiManager.zaa zaaVar, ConnectionResult connectionResult) {
        this.f7236g = zaaVar;
        this.f7235f = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7236g.mo14711f(this.f7235f);
    }
}
