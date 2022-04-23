package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jz2.class */
public final class jz2 implements Parcelable.Creator<zzyk> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzyk createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k != 2) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                str2 = SafeParcelReader.m8323f(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzyk(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzyk[] newArray(int i) {
        return new zzyk[i];
    }
}
