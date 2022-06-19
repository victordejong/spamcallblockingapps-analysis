package com.google.android.gms.wallet;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzv.class */
public final class zzv implements Parcelable.Creator<PaymentData> {
    @Override // android.os.Parcelable.Creator
    public final PaymentData createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        CardInfo cardInfo = null;
        UserAddress userAddress = null;
        PaymentMethodToken paymentMethodToken = null;
        String str2 = null;
        Bundle bundle = null;
        String str3 = null;
        Bundle bundle2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 2:
                    cardInfo = (CardInfo) SafeParcelReader.m38880i(parcel, readInt, CardInfo.CREATOR);
                    break;
                case 3:
                    userAddress = (UserAddress) SafeParcelReader.m38880i(parcel, readInt, UserAddress.CREATOR);
                    break;
                case 4:
                    paymentMethodToken = (PaymentMethodToken) SafeParcelReader.m38880i(parcel, readInt, PaymentMethodToken.CREATOR);
                    break;
                case 5:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 7:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    bundle2 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new PaymentData(str, cardInfo, userAddress, paymentMethodToken, str2, bundle, str3, bundle2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PaymentData[] newArray(int i) {
        return new PaymentData[i];
    }
}
