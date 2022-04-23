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
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k != 2) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                bundle = SafeParcelReader.m8328a(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzamt(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzamt[] newArray(int i) {
        return new zzamt[i];
    }
}
