package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbw.class */
public final class zzbbw implements Parcelable.Creator<zzbbx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbbx createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 4) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 5) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 != 6) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                z2 = SafeParcelReader.m17242t(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzbbx(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbbx[] newArray(int i) {
        return new zzbbx[i];
    }
}
