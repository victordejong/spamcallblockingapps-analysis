package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egt.class */
public final class egt implements Parcelable.Creator<zzth> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzth createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.a(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c2 == 3) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 4) {
                z2 = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 5) {
                j = SafeParcelReader.f(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z3 = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzth(parcelFileDescriptor, z, z2, j, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzth[] newArray(int i) {
        return new zzth[i];
    }
}
