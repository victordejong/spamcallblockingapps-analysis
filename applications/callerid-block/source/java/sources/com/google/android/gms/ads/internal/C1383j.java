package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/j.class */
public final class C1383j implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f = 0.0f;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 2:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 3:
                    z2 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 4:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 5:
                    z3 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 6:
                    f = SafeParcelReader.m8314o(parcel, m8312q);
                    break;
                case 7:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 8:
                    z4 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 9:
                    z5 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 10:
                    z6 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzj(z, z2, str, z3, f, i, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
