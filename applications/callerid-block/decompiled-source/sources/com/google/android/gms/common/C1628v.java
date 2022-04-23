package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/v.class */
public final class C1628v implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                i = SafeParcelReader.m8310s(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzq(z, str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq[] newArray(int i) {
        return new zzq[i];
    }
}
