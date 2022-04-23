package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/be.class */
public final class be implements Parcelable.Creator<zzeg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeg createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        zzfo zzfoVar = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzfoVar = (zzfo) SafeParcelReader.a(parcel, readInt, zzfo.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzeg(i, zzfoVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeg[] newArray(int i) {
        return new zzeg[i];
    }
}
