package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sw.class */
public final class sw implements Parcelable.Creator<zzaul> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaul createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaul(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaul[] newArray(int i) {
        return new zzaul[i];
    }
}
