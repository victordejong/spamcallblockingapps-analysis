package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zat.class */
public final class zat implements Parcelable.Creator<zau> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zau createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                iBinder = SafeParcelReader.m17236z(parcel, a);
            } else if (a2 == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.m17264a(parcel, a, ConnectionResult.CREATOR);
            } else if (a2 == 4) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                z2 = SafeParcelReader.m17242t(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zau(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zau[] newArray(int i) {
        return new zau[i];
    }
}
