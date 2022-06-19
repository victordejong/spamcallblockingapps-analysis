package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzq.class */
public abstract class zzq extends zzc implements zzn {
    public zzq() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zza((Bundle) zzb.zza(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
