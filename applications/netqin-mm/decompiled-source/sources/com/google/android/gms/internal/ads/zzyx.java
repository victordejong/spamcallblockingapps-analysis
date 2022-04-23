package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyx.class */
public final class zzyx implements Parcelable.Creator<zzyu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzyu createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzyu(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzyu[] newArray(int i) {
        return new zzyu[i];
    }
}
