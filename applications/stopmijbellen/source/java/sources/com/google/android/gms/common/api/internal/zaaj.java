package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaj.class */
final class zaaj extends zabb {
    public final /* synthetic */ ConnectionResult zaa;
    public final /* synthetic */ zaal zab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaaj(zaal zaalVar, zaba zabaVar, ConnectionResult connectionResult) {
        super(zabaVar);
        this.zab = zaalVar;
        this.zaa = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    @GuardedBy("mLock")
    public final void zaa() {
        this.zab.zaa.zaF(this.zaa);
    }
}
