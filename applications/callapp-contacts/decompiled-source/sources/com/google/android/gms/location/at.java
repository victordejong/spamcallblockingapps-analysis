package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/at.class */
public final class at implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        long j = 50;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = Integer.MAX_VALUE;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 2) {
                j = SafeParcelReader.f(parcel, readInt);
            } else if (c2 == 3) {
                f = SafeParcelReader.i(parcel, readInt);
            } else if (c2 == 4) {
                j2 = SafeParcelReader.f(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzs(z, j, f, j2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
