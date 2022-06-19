package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyi.class */
public final class dyi implements Parcelable.Creator<dyf> {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dyf createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new dyf(i2, i, str, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dyf[] newArray(int i) {
        return new dyf[i];
    }
}
