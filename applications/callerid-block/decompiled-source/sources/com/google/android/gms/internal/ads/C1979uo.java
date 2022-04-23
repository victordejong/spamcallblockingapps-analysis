package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.uo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uo.class */
public final class C1979uo implements Parcelable.Creator<zzbbq> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbbq createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 3) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k == 4) {
                i2 = SafeParcelReader.m8310s(parcel, q);
            } else if (k == 5) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k != 6) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                z2 = SafeParcelReader.m8317l(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzbbq(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbbq[] newArray(int i) {
        return new zzbbq[i];
    }
}
