package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.gq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gq.class */
public final class C3174gq implements Parcelable.Creator<C3171gn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3171gn createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 1000:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3171gn(i3, i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3171gn[] newArray(int i) {
        return new C3171gn[i];
    }
}
