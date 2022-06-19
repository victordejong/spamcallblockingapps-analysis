package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l30.class */
public final class l30 implements Parcelable.Creator<zzbqy> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbqy createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 2) {
                strArr = SafeParcelReader.m16957q(parcel, m16983C);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                strArr2 = SafeParcelReader.m16957q(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbqy(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbqy[] newArray(int i) {
        return new zzbqy[i];
    }
}
