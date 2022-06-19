package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egt.class */
public final class egt implements Parcelable.Creator<zzth> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzth createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        char c = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m19143a(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c2 == 3) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c2 == 4) {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c2 == 5) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z3 = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzth(parcelFileDescriptor, z, z2, c, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzth[] newArray(int i) {
        return new zzth[i];
    }
}
