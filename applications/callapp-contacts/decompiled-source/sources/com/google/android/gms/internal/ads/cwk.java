package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwk.class */
public final class cwk implements Parcelable.Creator<zzdwj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwj createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                bArr = SafeParcelReader.p(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdwj(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwj[] newArray(int i) {
        return new zzdwj[i];
    }
}
