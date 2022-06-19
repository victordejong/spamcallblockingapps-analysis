package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.yh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yh.class */
public final class C3651yh implements Parcelable.Creator<C3647yd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3647yd createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 5:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 6:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3647yd(str, i2, i, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3647yd[] newArray(int i) {
        return new C3647yd[i];
    }
}
