package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzf.class */
public final class zzf implements Parcelable.Creator<LabelValueRow> {
    @Override // android.os.Parcelable.Creator
    public final LabelValueRow createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList arrayList = new ArrayList();
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m38875n(parcel, readInt, LabelValue.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LabelValueRow(str, str2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LabelValueRow[] newArray(int i) {
        return new LabelValueRow[i];
    }
}
