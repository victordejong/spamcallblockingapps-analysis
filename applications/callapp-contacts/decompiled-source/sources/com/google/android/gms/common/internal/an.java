package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/an.class */
public final class an implements Parcelable.Creator<zav> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zav createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                iBinder = SafeParcelReader.n(parcel, readInt);
            } else if (c2 == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.a(parcel, readInt, ConnectionResult.CREATOR);
            } else if (c2 == 4) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zav(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zav[] newArray(int i) {
        return new zav[i];
    }
}
