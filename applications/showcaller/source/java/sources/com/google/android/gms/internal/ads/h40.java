package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h40.class */
public final class h40 implements Parcelable.Creator<zzbrx> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrx createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 3) {
                i3 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 1000) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbrx(i, i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrx[] newArray(int i) {
        return new zzbrx[i];
    }
}
