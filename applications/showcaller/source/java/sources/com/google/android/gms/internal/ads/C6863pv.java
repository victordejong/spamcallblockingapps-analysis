package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.pv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pv.class */
public final class C6863pv implements Parcelable.Creator<zzbio> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbio createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            if (SafeParcelReader.m16952v(m16983C) != 15) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbio(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbio[] newArray(int i) {
        return new zzbio[i];
    }
}
