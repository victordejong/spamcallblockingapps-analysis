package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/i.class */
public final class C1564i implements Parcelable.Creator<Feature> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Feature createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        int i = 0;
        long j = -1;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 2) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                j = SafeParcelReader.m8309t(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new Feature(str, i, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Feature[] newArray(int i) {
        return new Feature[i];
    }
}
