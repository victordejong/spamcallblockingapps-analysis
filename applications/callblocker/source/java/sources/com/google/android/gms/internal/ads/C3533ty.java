package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ty */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ty.class */
public final class C3533ty implements Parcelable.Creator<C3531tw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3531tw createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        dya dyaVar = null;
        dyd dydVar = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    dydVar = (dyd) SafeParcelReader.m13965a(parcel, m13969a, dyd.CREATOR);
                    break;
                case 4:
                    dyaVar = (dya) SafeParcelReader.m13965a(parcel, m13969a, dya.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3531tw(str2, str, dydVar, dyaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3531tw[] newArray(int i) {
        return new C3531tw[i];
    }
}
