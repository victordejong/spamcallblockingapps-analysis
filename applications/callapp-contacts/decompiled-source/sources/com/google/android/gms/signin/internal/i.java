package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/i.class */
public final class i implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ConnectionResult connectionResult = null;
        zav zavVar = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.a(parcel, readInt, ConnectionResult.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zavVar = (zav) SafeParcelReader.a(parcel, readInt, zav.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zak(i, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}
