package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkt.class */
public final class zzkt implements Parcelable.Creator<zzku> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzku createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    j = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 4:
                    l = SafeParcelReader.m17273C(parcel, a);
                    break;
                case 5:
                    f = SafeParcelReader.m17237y(parcel, a);
                    break;
                case 6:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 7:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 8:
                    d = SafeParcelReader.m17239w(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzku(i, str, j, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzku[] newArray(int i) {
        return new zzku[i];
    }
}
