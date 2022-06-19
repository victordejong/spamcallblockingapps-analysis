package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaay.class */
final class zaay implements GoogleApiClient.ConnectionCallbacks {
    private final /* synthetic */ zaaw zahh;
    private final /* synthetic */ AtomicReference zahi;
    private final /* synthetic */ StatusPendingResult zahj;

    public zaay(zaaw zaawVar, AtomicReference atomicReference, StatusPendingResult statusPendingResult) {
        this.zahh = zaawVar;
        this.zahi = atomicReference;
        this.zahj = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.zahh.zaa((GoogleApiClient) this.zahi.get(), this.zahj, true);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
