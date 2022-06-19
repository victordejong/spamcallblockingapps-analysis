package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.cc */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cc.class */
public final class C14288cc implements Parcelable.Creator<zzfq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfq createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        zzay zzayVar = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzayVar = (zzay) SafeParcelReader.m19143a(parcel, readInt, zzay.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzfq(i, zzayVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfq[] newArray(int i) {
        return new zzfq[i];
    }
}
