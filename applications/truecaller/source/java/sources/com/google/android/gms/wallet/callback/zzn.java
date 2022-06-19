package com.google.android.gms.wallet.callback;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/callback/zzn.class */
public final class zzn implements Parcelable.Creator<PaymentDataRequestUpdate> {
    @Override // android.os.Parcelable.Creator
    public final PaymentDataRequestUpdate createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new PaymentDataRequestUpdate(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PaymentDataRequestUpdate[] newArray(int i) {
        return new PaymentDataRequestUpdate[i];
    }
}
