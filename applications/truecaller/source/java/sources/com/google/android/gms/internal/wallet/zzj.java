package com.google.android.gms.internal.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/wallet/zzj.class */
public final class zzj implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final zzi createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        byte[] bArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bArr = SafeParcelReader.m38885d(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzi(bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
