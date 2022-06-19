package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.measurement.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b.class */
public final class C7302b implements Parcelable.Creator<zzz> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 2:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 3:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 4:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    bundle = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 8:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzz(c, c2, z, str, str2, str3, bundle, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}
