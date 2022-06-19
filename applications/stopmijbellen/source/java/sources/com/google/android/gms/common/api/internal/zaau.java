package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaau.class */
final class zaau implements GoogleApiClient.ConnectionCallbacks {
    public final /* synthetic */ AtomicReference zaa;
    public final /* synthetic */ StatusPendingResult zab;
    public final /* synthetic */ zaaz zac;

    public zaau(zaaz zaazVar, AtomicReference atomicReference, StatusPendingResult statusPendingResult) {
        this.zac = zaazVar;
        this.zaa = atomicReference;
        this.zab = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.zac.zal((GoogleApiClient) Preconditions.checkNotNull((GoogleApiClient) this.zaa.get()), this.zab, true);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
