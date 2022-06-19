package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.go */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/go.class */
public final class C3172go implements Parcelable.Creator<C3169gl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3169gl createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        Bundle bundle = null;
        String str = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3169gl(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3169gl[] newArray(int i) {
        return new C3169gl[i];
    }
}
