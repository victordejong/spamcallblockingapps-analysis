package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uz2.class */
public final class uz2 implements Parcelable.Creator<zzyz> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzyz createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 2) {
                i2 = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 3) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k != 4) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                c = SafeParcelReader.m8309t(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzyz(i, i2, str, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzyz[] newArray(int i) {
        return new zzyz[i];
    }
}
