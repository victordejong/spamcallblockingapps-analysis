package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaf.class */
public final class zzaaf implements Parcelable.Creator<zzaag> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaag createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 15) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaag(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaag[] newArray(int i) {
        return new zzaag[i];
    }
}
