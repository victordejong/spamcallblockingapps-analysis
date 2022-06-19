package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzae.class */
public final class zzae implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final zzad createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzad(i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad[] newArray(int i) {
        return new zzad[i];
    }
}
