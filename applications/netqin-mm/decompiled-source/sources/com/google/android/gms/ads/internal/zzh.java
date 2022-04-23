package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f = 0.0f;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 3:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 4:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 5:
                    z3 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 6:
                    f = SafeParcelReader.m17238x(parcel, a);
                    break;
                case 7:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 8:
                    z4 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 9:
                    z5 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 10:
                    z6 = SafeParcelReader.m17242t(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzi(z, z2, str, z3, f, i, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
