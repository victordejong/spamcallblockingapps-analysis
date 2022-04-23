package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.qa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qa.class */
public final class C1902qa implements Parcelable.Creator<zzamj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamj createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 2) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 3) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 4) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                str2 = SafeParcelReader.m8323f(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzamj(str, z, i, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamj[] newArray(int i) {
        return new zzamj[i];
    }
}
