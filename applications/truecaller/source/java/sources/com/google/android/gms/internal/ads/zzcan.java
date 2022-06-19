package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcan.class */
public final class zzcan implements Parcelable.Creator<zzcam> {
    @Override // android.os.Parcelable.Creator
    public final zzcam createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                iBinder = SafeParcelReader.m38868u(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                iBinder2 = SafeParcelReader.m38868u(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcam(iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcam[] newArray(int i) {
        return new zzcam[i];
    }
}
