package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduy.class */
public final class zzduy implements Parcelable.Creator<zzduv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzduv createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        byte[] bArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                bArr = SafeParcelReader.m17255g(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i2 = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzduv(i, bArr, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzduv[] newArray(int i) {
        return new zzduv[i];
    }
}
