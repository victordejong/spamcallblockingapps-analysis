package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.v5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v5.class */
public final class C1991v5 implements Parcelable.Creator<zzagy> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzagy createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        zzady zzadyVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 2:
                    z = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 3:
                    i2 = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 4:
                    z2 = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 5:
                    i3 = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 6:
                    zzadyVar = (zzady) SafeParcelReader.m8324e(parcel, q, zzady.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 8:
                    i4 = SafeParcelReader.m8310s(parcel, q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzagy(i, z, i2, z2, i3, zzadyVar, z3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzagy[] newArray(int i) {
        return new zzagy[i];
    }
}
