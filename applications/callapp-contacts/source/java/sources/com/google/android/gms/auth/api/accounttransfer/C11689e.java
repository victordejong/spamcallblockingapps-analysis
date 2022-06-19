package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/e.class */
public final class C11689e implements Parcelable.Creator<DeviceMetaData> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DeviceMetaData createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 2) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new DeviceMetaData(i, z, c, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DeviceMetaData[] newArray(int i) {
        return new DeviceMetaData[i];
    }
}
