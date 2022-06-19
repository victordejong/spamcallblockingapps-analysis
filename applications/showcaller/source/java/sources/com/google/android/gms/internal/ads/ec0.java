package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ec0.class */
public final class ec0 implements Parcelable.Creator<zzcam> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcam createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                iBinder = SafeParcelReader.m16982D(parcel, m16983C);
            } else if (m16952v != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                iBinder2 = SafeParcelReader.m16982D(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcam(iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcam[] newArray(int i) {
        return new zzcam[i];
    }
}
