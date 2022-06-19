package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.LocationSettingsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbc.class */
public final class zzbc extends zzar {
    private BaseImplementation.ResultHolder<LocationSettingsResult> zzdf;

    public zzbc(BaseImplementation.ResultHolder<LocationSettingsResult> resultHolder) {
        Preconditions.m38906b(resultHolder != null, "listener can't be null.");
        this.zzdf = resultHolder;
    }

    @Override // com.google.android.gms.internal.location.zzaq
    public final void zza(LocationSettingsResult locationSettingsResult) throws RemoteException {
        this.zzdf.setResult(locationSettingsResult);
        this.zzdf = null;
    }
}
