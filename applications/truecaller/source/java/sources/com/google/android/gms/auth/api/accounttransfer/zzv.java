package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzv.class */
public final class zzv implements Parcelable.Creator<DeviceMetaData> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final DeviceMetaData createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 2) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                z2 = SafeParcelReader.m38873p(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new DeviceMetaData(i, z, c, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DeviceMetaData[] newArray(int i) {
        return new DeviceMetaData[i];
    }
}
