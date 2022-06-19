package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/zzr.class */
public final class zzr implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final zzq createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzq(z, str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzq[] newArray(int i) {
        return new zzq[i];
    }
}
