package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.oq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oq.class */
public final class C6821oq implements Parcelable.Creator<zzbcz> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbcz createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        zzbcz zzbczVar = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 3) {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 4) {
                zzbczVar = (zzbcz) SafeParcelReader.m16959o(parcel, m16983C, zzbcz.CREATOR);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                iBinder = SafeParcelReader.m16982D(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbcz(i, str, str2, zzbczVar, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbcz[] newArray(int i) {
        return new zzbcz[i];
    }
}
