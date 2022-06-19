package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zam.class */
final class zam {
    private final int zadh;
    private final ConnectionResult zadi;

    public zam(ConnectionResult connectionResult, int i) {
        Preconditions.checkNotNull(connectionResult);
        this.zadi = connectionResult;
        this.zadh = i;
    }

    public final ConnectionResult getConnectionResult() {
        return this.zadi;
    }

    public final int zar() {
        return this.zadh;
    }
}
