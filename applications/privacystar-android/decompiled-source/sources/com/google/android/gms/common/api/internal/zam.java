package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zam.class */
final class zam {
    private final int zadg;
    private final ConnectionResult zadh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(ConnectionResult connectionResult, int i) {
        Preconditions.checkNotNull(connectionResult);
        this.zadh = connectionResult;
        this.zadg = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ConnectionResult getConnectionResult() {
        return this.zadh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zar() {
        return this.zadg;
    }
}
