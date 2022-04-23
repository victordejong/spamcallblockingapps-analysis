package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cc.class */
public final class cc implements Parcelable.Creator<zzfq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfq createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        zzay zzayVar = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzayVar = (zzay) SafeParcelReader.a(parcel, readInt, zzay.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzfq(i, zzayVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfq[] newArray(int i) {
        return new zzfq[i];
    }
}
