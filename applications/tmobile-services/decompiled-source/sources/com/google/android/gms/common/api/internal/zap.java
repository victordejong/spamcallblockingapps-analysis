package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zap.class */
public final class zap implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final Api<?> f7319a;

    /* renamed from: b */
    private final boolean f7320b;

    /* renamed from: c */
    private zar f7321c;

    /* renamed from: e */
    private final void m14712e() {
        Preconditions.m14522l(this.f7321c, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: a */
    public final void mo14715a(int i) {
        m14712e();
        this.f7321c.mo14715a(i);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: b */
    public final void mo14714b(@Nullable Bundle bundle) {
        m14712e();
        this.f7321c.mo14714b(bundle);
    }

    /* renamed from: d */
    public final void m14713d(zar zarVar) {
        this.f7321c = zarVar;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    /* renamed from: f */
    public final void mo14711f(@NonNull ConnectionResult connectionResult) {
        m14712e();
        this.f7321c.mo14689c(connectionResult, this.f7319a, this.f7320b);
    }
}
