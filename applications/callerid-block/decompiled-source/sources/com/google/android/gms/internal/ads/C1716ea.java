package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ea */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ea.class */
public final class C1716ea implements Parcelable.Creator<zzalw> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzalw createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 2) {
                strArr = SafeParcelReader.m8322g(parcel, q);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                strArr2 = SafeParcelReader.m8322g(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzalw(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzalw[] newArray(int i) {
        return new zzalw[i];
    }
}
