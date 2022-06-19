package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.mq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mq.class */
public final class C6747mq implements Parcelable.Creator<zzbcx> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbcx createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbcx(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbcx[] newArray(int i) {
        return new zzbcx[i];
    }
}
