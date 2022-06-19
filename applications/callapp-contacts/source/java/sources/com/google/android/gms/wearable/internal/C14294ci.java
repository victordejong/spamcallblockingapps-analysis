package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.ci */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ci.class */
public final class C14294ci implements Parcelable.Creator<zzga> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzga createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzga(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzga[] newArray(int i) {
        return new zzga[i];
    }
}
