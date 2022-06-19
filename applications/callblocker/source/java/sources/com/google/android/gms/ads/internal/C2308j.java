package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/j.class */
public final class C2308j implements Parcelable.Creator<C2305g> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2305g createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        float f = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    z6 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 3:
                    z5 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    z4 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 6:
                    f = SafeParcelReader.m13955h(parcel, m13969a);
                    break;
                case 7:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 8:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 10:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2305g(z6, z5, str, z4, f, i, z3, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2305g[] newArray(int i) {
        return new C2305g[i];
    }
}
