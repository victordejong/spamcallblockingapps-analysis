package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajb.class */
public final class zzajb implements Parcelable.Creator<zzajc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajc createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                i3 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 1000) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzajc(i, i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajc[] newArray(int i) {
        return new zzajc[i];
    }
}
