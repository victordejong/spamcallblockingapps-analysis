package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bc.class */
public final class bc implements Parcelable.Creator<zzec> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzec createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        zzdd zzddVar = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzddVar = (zzdd) SafeParcelReader.a(parcel, readInt, zzdd.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzec(i, zzddVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzec[] newArray(int i) {
        return new zzec[i];
    }
}
