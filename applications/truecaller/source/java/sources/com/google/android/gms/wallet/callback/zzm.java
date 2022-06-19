package com.google.android.gms.wallet.callback;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/callback/zzm.class */
public final class zzm implements Parcelable.Creator<PaymentAuthorizationResult> {
    @Override // android.os.Parcelable.Creator
    public final PaymentAuthorizationResult createFromParcel(Parcel parcel) {
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
        return new PaymentAuthorizationResult(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PaymentAuthorizationResult[] newArray(int i) {
        return new PaymentAuthorizationResult[i];
    }
}
