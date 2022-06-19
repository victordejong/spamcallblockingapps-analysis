package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/x.class */
public final class C2728x implements Parcelable.Creator<C2700u> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2700u createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        boolean z2 = false;
        IBinder iBinder = null;
        String str = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    iBinder = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 3:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 4:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2700u(str, iBinder, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2700u[] newArray(int i) {
        return new C2700u[i];
    }
}
