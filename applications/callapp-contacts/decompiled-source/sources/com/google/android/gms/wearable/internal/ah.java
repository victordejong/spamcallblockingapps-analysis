package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ah.class */
public final class ah implements Parcelable.Creator<zzbt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbt createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzbt(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbt[] newArray(int i) {
        return new zzbt[i];
    }
}
