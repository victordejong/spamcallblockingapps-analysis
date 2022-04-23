package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/q.class */
public final class q implements Parcelable.Creator<zzaq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaq createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.o(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaq(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaq[] newArray(int i) {
        return new zzaq[i];
    }
}
