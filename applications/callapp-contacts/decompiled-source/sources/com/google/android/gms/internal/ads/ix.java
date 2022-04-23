package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ix.class */
public final class ix implements Parcelable.Creator<zzajw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajw createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.o(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzajw(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajw[] newArray(int i) {
        return new zzajw[i];
    }
}
