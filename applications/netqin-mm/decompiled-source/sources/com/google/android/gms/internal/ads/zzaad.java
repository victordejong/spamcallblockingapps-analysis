package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaad.class */
public final class zzaad implements Parcelable.Creator<zzaae> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaae createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i2 = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaae(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaae[] newArray(int i) {
        return new zzaae[i];
    }
}
