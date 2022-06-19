package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;
/* renamed from: com.google.android.gms.signin.internal.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/i.class */
public final class C14163i implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ConnectionResult connectionResult = null;
        zav zavVar = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.m19143a(parcel, readInt, ConnectionResult.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zavVar = (zav) SafeParcelReader.m19143a(parcel, readInt, zav.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zak(i, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}
