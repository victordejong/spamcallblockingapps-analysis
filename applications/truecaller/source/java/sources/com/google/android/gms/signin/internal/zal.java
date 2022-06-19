package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/signin/internal/zal.class */
public final class zal implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final zak createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ConnectionResult connectionResult = null;
        int i = 0;
        zav zavVar = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.m38880i(parcel, readInt, ConnectionResult.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                zavVar = (zav) SafeParcelReader.m38880i(parcel, readInt, zav.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zak(i, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}
