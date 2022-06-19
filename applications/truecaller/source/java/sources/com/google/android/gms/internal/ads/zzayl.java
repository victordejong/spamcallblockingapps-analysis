package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayl.class */
public final class zzayl implements Parcelable.Creator<zzayk> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzayk createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        ParcelFileDescriptor parcelFileDescriptor = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m38880i(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c2 == 3) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c2 == 4) {
                z2 = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c2 == 5) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                z3 = SafeParcelReader.m38873p(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzayk(parcelFileDescriptor, z, z2, c, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayk[] newArray(int i) {
        return new zzayk[i];
    }
}
