package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/y.class */
public final class y implements Parcelable.Creator<zzaaz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 3) {
                z2 = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z3 = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaaz(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz[] newArray(int i) {
        return new zzaaz[i];
    }
}
