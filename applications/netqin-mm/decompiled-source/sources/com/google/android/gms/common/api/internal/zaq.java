package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaq.class */
public final class zaq implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final Api<?> f23295a;

    /* renamed from: b */
    public final boolean f23296b;

    /* renamed from: c */
    public zap f23297c;

    public zaq(Api<?> api, boolean z) {
        this.f23295a = api;
        this.f23296b = z;
    }

    /* renamed from: a */
    public final zap m17467a() {
        Preconditions.m17287a(this.f23297c, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        return this.f23297c;
    }

    /* renamed from: a */
    public final void m17466a(zap zapVar) {
        this.f23297c = zapVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        m17467a().onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m17467a().mo17468a(connectionResult, this.f23295a, this.f23296b);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        m17467a().onConnectionSuspended(i);
    }
}
