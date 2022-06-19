package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/zzd.class */
public final class zzd implements Parcelable.Creator<zzc> {
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzc createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        boolean z = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c3 == 2) {
                c2 = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c = SafeParcelReader.m38866w(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzc(z, c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
