package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lu1.class */
public final class lu1 implements Parcelable.Creator<zzead> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzead createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 2) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                bArr = SafeParcelReader.m8327b(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzead(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzead[] newArray(int i) {
        return new zzead[i];
    }
}
