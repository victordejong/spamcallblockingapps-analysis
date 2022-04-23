package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ab.class */
public final class C1646ab implements Parcelable.Creator<zzamv> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamv createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                i2 = SafeParcelReader.m8310s(parcel, q);
            } else if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 3) {
                i3 = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 1000) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                i = SafeParcelReader.m8310s(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzamv(i, i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamv[] newArray(int i) {
        return new zzamv[i];
    }
}
