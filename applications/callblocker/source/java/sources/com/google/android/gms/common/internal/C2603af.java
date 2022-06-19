package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.af */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/af.class */
public final class C2603af implements Parcelable.Creator<C2668u> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2668u createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        boolean z2 = false;
        C2579b c2579b = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    iBinder = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 3:
                    c2579b = (C2579b) SafeParcelReader.m13965a(parcel, m13969a, C2579b.CREATOR);
                    break;
                case 4:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 5:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2668u(i, iBinder, c2579b, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2668u[] newArray(int i) {
        return new C2668u[i];
    }
}
