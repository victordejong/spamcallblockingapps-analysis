package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ff0.class */
public final class ff0 implements Parcelable.Creator<zzcdv> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcdv createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
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
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 5:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 7:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 8:
                    z4 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcdv(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcdv[] newArray(int i) {
        return new zzcdv[i];
    }
}
