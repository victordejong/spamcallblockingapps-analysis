package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.qa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qa.class */
public final class C1902qa implements Parcelable.Creator<zzamj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamj createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 2) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 3) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k != 4) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                str2 = SafeParcelReader.m8323f(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzamj(str, z, i, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamj[] newArray(int i) {
        return new zzamj[i];
    }
}
