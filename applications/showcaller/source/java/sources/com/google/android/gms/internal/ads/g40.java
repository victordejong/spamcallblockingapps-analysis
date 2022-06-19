package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g40.class */
public final class g40 implements Parcelable.Creator<zzbrv> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrv createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                bundle = SafeParcelReader.m16968f(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbrv(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrv[] newArray(int i) {
        return new zzbrv[i];
    }
}
