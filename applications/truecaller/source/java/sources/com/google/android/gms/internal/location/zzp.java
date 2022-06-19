package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzp.class */
public final class zzp implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final zzo createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        zzm zzmVar = null;
        int i = 1;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                zzmVar = (zzm) SafeParcelReader.m38880i(parcel, readInt, zzm.CREATOR);
            } else if (c == 3) {
                iBinder = SafeParcelReader.m38868u(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                iBinder2 = SafeParcelReader.m38868u(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzo(i, zzmVar, iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i) {
        return new zzo[i];
    }
}
