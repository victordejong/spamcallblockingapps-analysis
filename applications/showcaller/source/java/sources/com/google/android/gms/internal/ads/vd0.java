package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vd0.class */
public final class vd0 implements Parcelable.Creator<zzccg> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzccg createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        zzbdg zzbdgVar = null;
        String str = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 2) {
                zzbdgVar = (zzbdg) SafeParcelReader.m16959o(parcel, m16983C, zzbdg.CREATOR);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzccg(zzbdgVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzccg[] newArray(int i) {
        return new zzccg[i];
    }
}
