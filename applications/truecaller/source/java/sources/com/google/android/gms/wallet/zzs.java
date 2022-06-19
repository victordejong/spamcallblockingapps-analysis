package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzs.class */
public final class zzs implements Parcelable.Creator<MaskedWallet> {
    @Override // android.os.Parcelable.Creator
    public final MaskedWallet createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        String[] strArr = null;
        String str3 = null;
        zza zzaVar = null;
        zza zzaVar2 = null;
        LoyaltyWalletObject[] loyaltyWalletObjectArr = null;
        OfferWalletObject[] offerWalletObjectArr = null;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        InstrumentInfo[] instrumentInfoArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    strArr = SafeParcelReader.m38878k(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    zzaVar = (zza) SafeParcelReader.m38880i(parcel, readInt, zza.CREATOR);
                    break;
                case 7:
                    zzaVar2 = (zza) SafeParcelReader.m38880i(parcel, readInt, zza.CREATOR);
                    break;
                case '\b':
                    loyaltyWalletObjectArr = (LoyaltyWalletObject[]) SafeParcelReader.m38876m(parcel, readInt, LoyaltyWalletObject.CREATOR);
                    break;
                case '\t':
                    offerWalletObjectArr = (OfferWalletObject[]) SafeParcelReader.m38876m(parcel, readInt, OfferWalletObject.CREATOR);
                    break;
                case '\n':
                    userAddress = (UserAddress) SafeParcelReader.m38880i(parcel, readInt, UserAddress.CREATOR);
                    break;
                case 11:
                    userAddress2 = (UserAddress) SafeParcelReader.m38880i(parcel, readInt, UserAddress.CREATOR);
                    break;
                case '\f':
                    instrumentInfoArr = (InstrumentInfo[]) SafeParcelReader.m38876m(parcel, readInt, InstrumentInfo.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new MaskedWallet(str, str2, strArr, str3, zzaVar, zzaVar2, loyaltyWalletObjectArr, offerWalletObjectArr, userAddress, userAddress2, instrumentInfoArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MaskedWallet[] newArray(int i) {
        return new MaskedWallet[i];
    }
}
