package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/n.class */
public final class n implements Parcelable.Creator<zzaw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaw createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        zzay zzayVar = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                zzayVar = (zzay) SafeParcelReader.a(parcel, readInt, zzay.CREATOR);
            } else if (c2 == 3) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 4) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaw(zzayVar, i, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaw[] newArray(int i) {
        return new zzaw[i];
    }
}
