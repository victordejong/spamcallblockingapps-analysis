package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzi.class */
public final class zzi implements Parcelable.Creator<CreateWalletObjectsRequest> {
    @Override // android.os.Parcelable.Creator
    public final CreateWalletObjectsRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        LoyaltyWalletObject loyaltyWalletObject = null;
        GiftCardWalletObject giftCardWalletObject = null;
        int i = 0;
        OfferWalletObject offerWalletObject = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                loyaltyWalletObject = (LoyaltyWalletObject) SafeParcelReader.m38880i(parcel, readInt, LoyaltyWalletObject.CREATOR);
            } else if (c == 3) {
                offerWalletObject = (OfferWalletObject) SafeParcelReader.m38880i(parcel, readInt, OfferWalletObject.CREATOR);
            } else if (c == 4) {
                giftCardWalletObject = (GiftCardWalletObject) SafeParcelReader.m38880i(parcel, readInt, GiftCardWalletObject.CREATOR);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CreateWalletObjectsRequest(loyaltyWalletObject, offerWalletObject, giftCardWalletObject, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CreateWalletObjectsRequest[] newArray(int i) {
        return new CreateWalletObjectsRequest[i];
    }
}
