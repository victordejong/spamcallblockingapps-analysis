package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/v.class */
public final class C1628v implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 2) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k != 3) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzq(z, str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq[] newArray(int i) {
        return new zzq[i];
    }
}
