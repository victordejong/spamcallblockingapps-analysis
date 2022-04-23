package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/v.class */
public final class v implements Parcelable.Creator<zzaav> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaav createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 15) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaav(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaav[] newArray(int i) {
        return new zzaav[i];
    }
}
