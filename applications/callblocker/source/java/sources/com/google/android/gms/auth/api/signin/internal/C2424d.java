package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.signin.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/d.class */
public final class C2424d implements Parcelable.Creator<C2421a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2421a createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        Bundle bundle = null;
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
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2421a(i2, i, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2421a[] newArray(int i) {
        return new C2421a[i];
    }
}
