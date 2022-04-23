package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.fa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fa.class */
public final class C1731fa implements Parcelable.Creator<zzaly> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaly createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        long j = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 1:
                    z = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 2:
                    str = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 3:
                    i = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 4:
                    bArr = SafeParcelReader.m8327b(parcel, q);
                    break;
                case 5:
                    strArr = SafeParcelReader.m8322g(parcel, q);
                    break;
                case 6:
                    strArr2 = SafeParcelReader.m8322g(parcel, q);
                    break;
                case 7:
                    z2 = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 8:
                    j = SafeParcelReader.m8309t(parcel, q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzaly(z, str, i, bArr, strArr, strArr2, z2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaly[] newArray(int i) {
        return new zzaly[i];
    }
}
