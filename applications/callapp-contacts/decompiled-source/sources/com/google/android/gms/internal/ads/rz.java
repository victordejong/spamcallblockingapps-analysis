package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rz.class */
public final class rz implements Parcelable.Creator<zzatj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatj createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                iBinder = SafeParcelReader.n(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                iBinder2 = SafeParcelReader.n(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzatj(iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatj[] newArray(int i) {
        return new zzatj[i];
    }
}
