package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzm.class */
public final class zzm implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        boolean z = false;
        String str = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 2) {
                iBinder = SafeParcelReader.m17236z(parcel, a);
            } else if (a2 == 3) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                z2 = SafeParcelReader.m17242t(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzj(str, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
