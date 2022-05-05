package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zag.class */
final class zag implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ OnConnectionFailedListener f7548a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zag(OnConnectionFailedListener onConnectionFailedListener) {
        this.f7548a = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    /* renamed from: f */
    public final void mo11165f(@NonNull ConnectionResult connectionResult) {
        this.f7548a.mo14711f(connectionResult);
    }
}
