package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.rk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rk.class */
public final class C3465rk implements Parcelable.Creator<C3462rh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3462rh createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        dya dyaVar = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    dyaVar = (dya) SafeParcelReader.m13965a(parcel, m13969a, dya.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3462rh(dyaVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3462rh[] newArray(int i) {
        return new C3462rh[i];
    }
}
