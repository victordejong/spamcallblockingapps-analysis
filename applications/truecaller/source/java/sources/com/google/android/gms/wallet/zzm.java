package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzm.class */
public final class zzm implements Parcelable.Creator<GiftCardWalletObject> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final GiftCardWalletObject createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        CommonWalletObject commonWalletObject = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    commonWalletObject = (CommonWalletObject) SafeParcelReader.m38880i(parcel, readInt, CommonWalletObject.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 7:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\t':
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new GiftCardWalletObject(commonWalletObject, str, str2, str3, c, str4, c2, str5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GiftCardWalletObject[] newArray(int i) {
        return new GiftCardWalletObject[i];
    }
}
