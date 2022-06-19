package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.rv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rv.class */
public final class C6937rv implements Parcelable.Creator<zzbis> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbis createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 2) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 3) {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                z3 = SafeParcelReader.m16951w(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbis(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbis[] newArray(int i) {
        return new zzbis[i];
    }
}
