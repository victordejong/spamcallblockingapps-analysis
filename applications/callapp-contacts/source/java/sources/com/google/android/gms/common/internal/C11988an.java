package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.an */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/an.class */
public final class C11988an implements Parcelable.Creator<zav> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zav createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                iBinder = SafeParcelReader.m19127n(parcel, readInt);
            } else if (c == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.m19143a(parcel, readInt, ConnectionResult.CREATOR);
            } else if (c == 4) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zav(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zav[] newArray(int i) {
        return new zav[i];
    }
}
