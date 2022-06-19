package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzo.class */
public final class zzo implements Parcelable.Creator<WalletObjectMessage> {
    @Override // android.os.Parcelable.Creator
    public final WalletObjectMessage createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        TimeInterval timeInterval = null;
        UriData uriData = null;
        UriData uriData2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 4) {
                timeInterval = (TimeInterval) SafeParcelReader.m38880i(parcel, readInt, TimeInterval.CREATOR);
            } else if (c == 5) {
                uriData = (UriData) SafeParcelReader.m38880i(parcel, readInt, UriData.CREATOR);
            } else if (c != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                uriData2 = (UriData) SafeParcelReader.m38880i(parcel, readInt, UriData.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new WalletObjectMessage(str, str2, timeInterval, uriData, uriData2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WalletObjectMessage[] newArray(int i) {
        return new WalletObjectMessage[i];
    }
}
