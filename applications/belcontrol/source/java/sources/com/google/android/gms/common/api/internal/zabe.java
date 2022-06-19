package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabe.class */
public final class zabe implements Runnable {
    private final /* synthetic */ ConnectionResult zaa;
    private final /* synthetic */ GoogleApiManager.zaa zab;

    public zabe(GoogleApiManager.zaa zaaVar, ConnectionResult connectionResult) {
        this.zab = zaaVar;
        this.zaa = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zab.onConnectionFailed(this.zaa);
    }
}
