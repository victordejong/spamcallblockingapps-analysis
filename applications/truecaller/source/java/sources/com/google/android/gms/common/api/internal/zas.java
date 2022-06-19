package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zas.class */
public final class zas implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final Api<?> f5903a;

    /* renamed from: b */
    public final boolean f5904b;

    /* renamed from: c */
    public zat f5905c;

    public zas(Api<?> api, boolean z) {
        this.f5903a = api;
        this.f5904b = z;
    }

    /* renamed from: a */
    public final zat m38925a() {
        Preconditions.m38897k(this.f5905c, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        return this.f5905c;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        m38925a().onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m38925a().mo38924m1(connectionResult, this.f5903a, this.f5904b);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        m38925a().onConnectionSuspended(i);
    }
}
