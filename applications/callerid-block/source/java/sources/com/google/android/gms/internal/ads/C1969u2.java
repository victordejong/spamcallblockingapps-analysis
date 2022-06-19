package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.u2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/u2.class */
public final class C1969u2 implements Parcelable.Creator<zzady> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzady createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 2) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 3) {
                z2 = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k != 4) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                z3 = SafeParcelReader.m8317l(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzady(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzady[] newArray(int i) {
        return new zzady[i];
    }
}
