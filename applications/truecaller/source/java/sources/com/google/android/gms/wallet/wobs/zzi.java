package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzi.class */
public final class zzi implements Parcelable.Creator<LoyaltyPointsBalance> {
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final LoyaltyPointsBalance createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        char c = 0;
        char c2 = 0;
        int i2 = -1;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    c = SafeParcelReader.m38871r(parcel, readInt);
                    break;
                case 5:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 7:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LoyaltyPointsBalance(i, str, c, str2, c2, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LoyaltyPointsBalance[] newArray(int i) {
        return new LoyaltyPointsBalance[i];
    }
}
