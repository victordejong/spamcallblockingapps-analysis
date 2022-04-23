package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public abstract class zzz extends zzc implements zzw {
    public zzz() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    public final boolean mo9195a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo9452d((Bundle) zzb.m10428a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
