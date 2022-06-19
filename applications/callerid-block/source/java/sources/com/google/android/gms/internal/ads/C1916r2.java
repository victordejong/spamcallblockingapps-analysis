package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.r2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r2.class */
public final class C1916r2 implements Parcelable.Creator<zzads> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzads createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                i2 = SafeParcelReader.m8310s(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzads(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzads[] newArray(int i) {
        return new zzads[i];
    }
}
