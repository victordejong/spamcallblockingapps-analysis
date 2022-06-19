package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public final class C1593t implements Parcelable.Creator<zzai> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzai createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(m8312q) != 1) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzai(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzai[] newArray(int i) {
        return new zzai[i];
    }
}
