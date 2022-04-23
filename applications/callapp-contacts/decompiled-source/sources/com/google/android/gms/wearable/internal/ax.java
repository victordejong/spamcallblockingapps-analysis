package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ax.class */
public final class ax implements Parcelable.Creator<zzdv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdv createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdv(i, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdv[] newArray(int i) {
        return new zzdv[i];
    }
}
