package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnc.class */
public final class cnc implements Parcelable.Creator<cnd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ cnd createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    bArr = SafeParcelReader.m13949n(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new cnd(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ cnd[] newArray(int i) {
        return new cnd[i];
    }
}
