package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzj.class */
public final class zzj implements Parcelable.Creator<LoyaltyPoints> {
    @Override // android.os.Parcelable.Creator
    public final LoyaltyPoints createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        LoyaltyPointsBalance loyaltyPointsBalance = null;
        TimeInterval timeInterval = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                loyaltyPointsBalance = (LoyaltyPointsBalance) SafeParcelReader.m38880i(parcel, readInt, LoyaltyPointsBalance.CREATOR);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                timeInterval = (TimeInterval) SafeParcelReader.m38880i(parcel, readInt, TimeInterval.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LoyaltyPoints(str, loyaltyPointsBalance, timeInterval);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LoyaltyPoints[] newArray(int i) {
        return new LoyaltyPoints[i];
    }
}
