package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bf.class */
public final class bf extends aq {
    final /* synthetic */ d e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(d dVar, int i, Bundle bundle) {
        super(dVar, i, null);
        this.e = dVar;
    }

    @Override // com.google.android.gms.common.internal.aq
    protected final void a(ConnectionResult connectionResult) {
        if (!this.e.enableLocalFallback() || !d.zzg(this.e)) {
            this.e.zzc.a(connectionResult);
            this.e.onConnectionFailed(connectionResult);
            return;
        }
        d.zzc(this.e, 16);
    }

    @Override // com.google.android.gms.common.internal.aq
    protected final boolean a() {
        this.e.zzc.a(ConnectionResult.RESULT_SUCCESS);
        return true;
    }
}
