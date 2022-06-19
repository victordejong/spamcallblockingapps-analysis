package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzk.class */
public final class zzk implements Parcelable.Creator<FullWallet> {
    @Override // android.os.Parcelable.Creator
    public final FullWallet createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        zzad zzadVar = null;
        String str3 = null;
        zza zzaVar = null;
        zza zzaVar2 = null;
        String[] strArr = null;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        InstrumentInfo[] instrumentInfoArr = null;
        PaymentMethodToken paymentMethodToken = null;
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
                    zzadVar = (zzad) SafeParcelReader.m38880i(parcel, readInt, zzad.CREATOR);
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
                    strArr = SafeParcelReader.m38878k(parcel, readInt);
                    break;
                case '\t':
                    userAddress = (UserAddress) SafeParcelReader.m38880i(parcel, readInt, UserAddress.CREATOR);
                    break;
                case '\n':
                    userAddress2 = (UserAddress) SafeParcelReader.m38880i(parcel, readInt, UserAddress.CREATOR);
                    break;
                case 11:
                    instrumentInfoArr = (InstrumentInfo[]) SafeParcelReader.m38876m(parcel, readInt, InstrumentInfo.CREATOR);
                    break;
                case '\f':
                    paymentMethodToken = (PaymentMethodToken) SafeParcelReader.m38880i(parcel, readInt, PaymentMethodToken.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new FullWallet(str, str2, zzadVar, str3, zzaVar, zzaVar2, strArr, userAddress, userAddress2, instrumentInfoArr, paymentMethodToken);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ FullWallet[] newArray(int i) {
        return new FullWallet[i];
    }
}
