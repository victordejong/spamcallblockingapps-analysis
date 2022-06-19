package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzae.class */
public final class zzae implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final zzad createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 4) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzad(str, str2, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzad[] newArray(int i) {
        return new zzad[i];
    }
}
