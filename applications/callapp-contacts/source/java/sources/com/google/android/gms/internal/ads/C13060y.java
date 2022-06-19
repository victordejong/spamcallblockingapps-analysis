package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/y.class */
public final class C13060y implements Parcelable.Creator<zzaaz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 3) {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z3 = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaaz(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz[] newArray(int i) {
        return new zzaaz[i];
    }
}
