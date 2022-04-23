package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/x.class */
public final class x implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        String str = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                iBinder = SafeParcelReader.n(parcel, readInt);
            } else if (c2 == 3) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzs(str, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
