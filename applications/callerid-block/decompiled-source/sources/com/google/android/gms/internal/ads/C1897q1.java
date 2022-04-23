package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.q1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/q1.class */
public final class C1897q1 implements Parcelable.Creator<zzacn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzacn createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(q) != 2) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                i = SafeParcelReader.m8310s(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzacn(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzacn[] newArray(int i) {
        return new zzacn[i];
    }
}
