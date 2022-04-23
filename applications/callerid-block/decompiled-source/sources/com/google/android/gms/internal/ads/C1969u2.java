package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.u2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/u2.class */
public final class C1969u2 implements Parcelable.Creator<zzady> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzady createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 3) {
                z2 = SafeParcelReader.m8317l(parcel, q);
            } else if (k != 4) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                z3 = SafeParcelReader.m8317l(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzady(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzady[] newArray(int i) {
        return new zzady[i];
    }
}
