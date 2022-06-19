package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b.class */
public final class C2225b implements Parcelable.Creator<zzaa> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
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
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 2:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 3:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 4:
                    zzklVar = (zzkl) SafeParcelReader.m8324e(parcel, m8312q, zzkl.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 6:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 7:
                    str3 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 8:
                    zzasVar = (zzas) SafeParcelReader.m8324e(parcel, m8312q, zzas.CREATOR);
                    break;
                case 9:
                    c2 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 10:
                    zzasVar2 = (zzas) SafeParcelReader.m8324e(parcel, m8312q, zzas.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 12:
                    zzasVar3 = (zzas) SafeParcelReader.m8324e(parcel, m8312q, zzas.CREATOR);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzaa(str, str2, zzklVar, c, z, str3, zzasVar, c2, zzasVar2, c3, zzasVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
