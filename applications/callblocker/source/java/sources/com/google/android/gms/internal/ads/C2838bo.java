package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.bo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bo.class */
public final class C2838bo implements Parcelable.Creator<C2835bl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2835bl createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        ecn ecnVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 3:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 5:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 6:
                    ecnVar = (ecn) SafeParcelReader.m13965a(parcel, m13969a, ecn.CREATOR);
                    break;
                case 7:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 8:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2835bl(i4, z3, i3, z2, i2, ecnVar, z, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2835bl[] newArray(int i) {
        return new C2835bl[i];
    }
}
