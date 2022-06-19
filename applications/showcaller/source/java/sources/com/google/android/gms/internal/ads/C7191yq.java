package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.yq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yq.class */
public final class C7191yq implements Parcelable.Creator<zzbdl> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdl createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        zzbdl[] zzbdlVarArr = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 4:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 5:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 6:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 7:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 8:
                    zzbdlVarArr = (zzbdl[]) SafeParcelReader.m16955s(parcel, m16983C, zzbdl.CREATOR);
                    break;
                case 9:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 10:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 11:
                    z4 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 12:
                    z5 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 13:
                    z6 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 14:
                    z7 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 15:
                    z8 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 16:
                    z9 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbdl(str, i, i2, z, i3, i4, zzbdlVarArr, z2, z3, z4, z5, z6, z7, z8, z9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdl[] newArray(int i) {
        return new zzbdl[i];
    }
}
