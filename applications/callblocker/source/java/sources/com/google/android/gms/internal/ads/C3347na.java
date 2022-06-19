package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.na */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/na.class */
public final class C3347na implements Parcelable.Creator<C3348nb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3348nb createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3348nb(i3, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3348nb[] newArray(int i) {
        return new C3348nb[i];
    }
}
