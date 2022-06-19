package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/b.class */
public final class C13878b implements Parcelable.Creator<zzaa> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaa createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
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
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    zzklVar = (zzkl) SafeParcelReader.m19143a(parcel, readInt, zzkl.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 7:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\b':
                    zzasVar = (zzas) SafeParcelReader.m19143a(parcel, readInt, zzas.CREATOR);
                    break;
                case '\t':
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\n':
                    zzasVar2 = (zzas) SafeParcelReader.m19143a(parcel, readInt, zzas.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\f':
                    zzasVar3 = (zzas) SafeParcelReader.m19143a(parcel, readInt, zzas.CREATOR);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaa(str, str2, zzklVar, c, z, str3, zzasVar, c2, zzasVar2, c3, zzasVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
