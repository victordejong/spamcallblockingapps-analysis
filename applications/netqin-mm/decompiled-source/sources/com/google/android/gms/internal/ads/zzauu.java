package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauu.class */
public final class zzauu implements Parcelable.Creator<zzauv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzauv createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzauv(str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzauv[] newArray(int i) {
        return new zzauv[i];
    }
}
