package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.CancellationException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabw.class */
public final class zabw extends zap {
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: f */
    public final void mo38950f() {
        new CancellationException("Host activity was destroyed before Google Play services could be made available.");
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: m */
    public final void mo38928m(ConnectionResult connectionResult, int i) {
        String str = connectionResult.f5665d;
        String str2 = str;
        if (str == null) {
            str2 = "Error connecting to Google Play services";
        }
        new ApiException(new Status(1, connectionResult.f5663b, str2, connectionResult.f5664c, connectionResult));
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: n */
    public final void mo38927n() {
        Activity mo38923Dh = this.f5762a.mo38923Dh();
        if (mo38923Dh == null) {
            new ApiException(new Status(8, null));
            throw null;
        } else if (this.f5902e.mo39062e(mo38923Dh, GoogleApiAvailabilityLight.f5674a) != 0) {
            throw null;
        } else {
            throw null;
        }
    }
}
