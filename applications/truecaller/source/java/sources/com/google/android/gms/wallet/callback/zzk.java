package com.google.android.gms.wallet.callback;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/callback/zzk.class */
public final class zzk implements Parcelable.Creator<CallbackOutput> {
    @Override // android.os.Parcelable.Creator
    public final CallbackOutput createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        byte[] bArr = null;
        int i = 0;
        int i2 = 0;
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 3) {
                bArr = SafeParcelReader.m38885d(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CallbackOutput(i, i2, bArr, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CallbackOutput[] newArray(int i) {
        return new CallbackOutput[i];
    }
}
