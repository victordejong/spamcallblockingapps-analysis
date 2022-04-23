package com.google.android.gms.common.internal;

import android.os.IInterface;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/LegacyInternalGmsClient.class */
public abstract class LegacyInternalGmsClient<T extends IInterface> extends GmsClient<T> {

    /* renamed from: a */
    private final GmsClientEventManager f7512a;

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void checkAvailabilityAndConnect() {
        this.f7512a.m14554b();
        super.checkAvailabilityAndConnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public void disconnect() {
        this.f7512a.m14555a();
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void onConnectedLocked(@NonNull T t) {
        super.onConnectedLocked(t);
        this.f7512a.m14552d(getConnectionHint());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        this.f7512a.m14553c(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public void onConnectionSuspended(int i) {
        super.onConnectionSuspended(i);
        this.f7512a.m14551e(i);
    }
}
