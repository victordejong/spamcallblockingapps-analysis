package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.za */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/za.class */
public final class C2064za implements Parcelable.Creator<zzamt> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamt createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                bundle = SafeParcelReader.m8328a(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzamt(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamt[] newArray(int i) {
        return new zzamt[i];
    }
}
