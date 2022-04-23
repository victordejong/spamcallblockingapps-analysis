package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzath.class */
public final class zzath implements Parcelable.Creator<zzate> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzate createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzate(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzate[] newArray(int i) {
        return new zzate[i];
    }
}
