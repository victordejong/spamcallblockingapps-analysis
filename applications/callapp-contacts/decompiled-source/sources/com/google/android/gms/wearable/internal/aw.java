package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/aw.class */
public final class aw implements Parcelable.Creator<zzdt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdt createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdt(i, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdt[] newArray(int i) {
        return new zzdt[i];
    }
}
