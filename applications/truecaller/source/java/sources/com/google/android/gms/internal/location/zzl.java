package com.google.android.gms.internal.location;

import android.os.DeadObjectException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzl.class */
public final class zzl implements zzbj<zzao> {
    private final /* synthetic */ zzk zzcc;

    public zzl(zzk zzkVar) {
        this.zzcc = zzkVar;
    }

    @Override // com.google.android.gms.internal.location.zzbj
    public final void checkConnected() {
        this.zzcc.checkConnected();
    }

    @Override // com.google.android.gms.internal.location.zzbj
    public final /* synthetic */ zzao getService() throws DeadObjectException {
        return (zzao) this.zzcc.getService();
    }
}
