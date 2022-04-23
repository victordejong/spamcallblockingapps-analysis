package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/as.class */
public final class as implements Parcelable.Creator<zzdk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdk createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        zzah zzahVar = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzahVar = (zzah) SafeParcelReader.a(parcel, readInt, zzah.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdk(i, zzahVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdk[] newArray(int i) {
        return new zzdk[i];
    }
}
