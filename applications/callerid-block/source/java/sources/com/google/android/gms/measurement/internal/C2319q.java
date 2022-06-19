package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q.class */
public final class C2319q implements Parcelable.Creator<zzaq> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaq createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(m8312q) != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                bundle = SafeParcelReader.m8328a(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzaq(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaq[] newArray(int i) {
        return new zzaq[i];
    }
}
