package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zze.class */
public final class zze implements Parcelable.Creator<CardInfo> {
    @Override // android.os.Parcelable.Creator
    public final CardInfo createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        UserAddress userAddress = null;
        int i = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 2) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str3 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 4) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                userAddress = (UserAddress) SafeParcelReader.m38880i(parcel, readInt, UserAddress.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CardInfo(str, str2, str3, i, userAddress);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CardInfo[] newArray(int i) {
        return new CardInfo[i];
    }
}
