package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduo.class */
public final class zzduo implements Parcelable.Creator<zzdul> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdul createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                bArr = SafeParcelReader.m17255g(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzdul(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdul[] newArray(int i) {
        return new zzdul[i];
    }
}
