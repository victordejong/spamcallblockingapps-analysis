package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzd.class */
public final class zzd implements Parcelable.Creator<LabelValue> {
    @Override // android.os.Parcelable.Creator
    public final LabelValue createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LabelValue(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LabelValue[] newArray(int i) {
        return new LabelValue[i];
    }
}
