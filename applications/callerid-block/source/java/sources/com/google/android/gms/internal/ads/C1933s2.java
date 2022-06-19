package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.s2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s2.class */
public final class C1933s2 implements Parcelable.Creator<zzadu> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzadu createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(m8312q) != 15) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzadu(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzadu[] newArray(int i) {
        return new zzadu[i];
    }
}
