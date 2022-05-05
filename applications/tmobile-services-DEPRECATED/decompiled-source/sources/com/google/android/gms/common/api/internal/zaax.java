package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaax.class */
final class zaax implements GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ StatusPendingResult f7205a;

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    /* renamed from: f */
    public final void mo14711f(@NonNull ConnectionResult connectionResult) {
        this.f7205a.m14974i(new Status(8));
    }
}
