package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzu.class */
public final class zzu implements Parcelable.Creator<OfferWalletObject> {
    @Override // android.os.Parcelable.Creator
    public final OfferWalletObject createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        CommonWalletObject commonWalletObject = null;
        int i = 0;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                commonWalletObject = (CommonWalletObject) SafeParcelReader.m38880i(parcel, readInt, CommonWalletObject.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new OfferWalletObject(i, str, str2, commonWalletObject);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ OfferWalletObject[] newArray(int i) {
        return new OfferWalletObject[i];
    }
}
