package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cf.class */
public final class cf implements Parcelable.Creator<zzfw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfw createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        IBinder iBinder = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.n(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzfw(i, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfw[] newArray(int i) {
        return new zzfw[i];
    }
}
