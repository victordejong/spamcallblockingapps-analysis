package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/b.class */
public final class C7656b implements Parcelable.Creator<zzaa> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        String str2 = null;
        zzkl zzklVar = null;
        String str3 = null;
        zzas zzasVar = null;
        zzas zzasVar2 = null;
        zzas zzasVar3 = null;
        boolean z = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 4:
                    zzklVar = (zzkl) SafeParcelReader.m16959o(parcel, m16983C, zzkl.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 6:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 7:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    zzasVar = (zzas) SafeParcelReader.m16959o(parcel, m16983C, zzas.CREATOR);
                    break;
                case 9:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 10:
                    zzasVar2 = (zzas) SafeParcelReader.m16959o(parcel, m16983C, zzas.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 12:
                    zzasVar3 = (zzas) SafeParcelReader.m16959o(parcel, m16983C, zzas.CREATOR);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzaa(str, str2, zzklVar, c, z, str3, zzasVar, c2, zzasVar2, c3, zzasVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
