package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/j.class */
public final class C5633j implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f = 0.0f;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 3:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 4:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 6:
                    f = SafeParcelReader.m16985A(parcel, m16983C);
                    break;
                case 7:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 8:
                    z4 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 9:
                    z5 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 10:
                    z6 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzj(z, z2, str, z3, f, i, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
