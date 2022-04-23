package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.s2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s2.class */
public final class C1933s2 implements Parcelable.Creator<zzadu> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzadu createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(q) != 15) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                str = SafeParcelReader.m8323f(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzadu(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzadu[] newArray(int i) {
        return new zzadu[i];
    }
}
