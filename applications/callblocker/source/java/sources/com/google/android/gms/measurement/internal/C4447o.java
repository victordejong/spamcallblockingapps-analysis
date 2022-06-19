package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o.class */
public final class C4447o implements Parcelable.Creator<C4445m> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4445m createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4445m(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4445m[] newArray(int i) {
        return new C4445m[i];
    }
}
