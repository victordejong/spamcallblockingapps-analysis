package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.ce */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ce.class */
public final class C14290ce implements Parcelable.Creator<zzfu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfu createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        zzdd zzddVar = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzddVar = (zzdd) SafeParcelReader.m19143a(parcel, readInt, zzdd.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzfu(i, zzddVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfu[] newArray(int i) {
        return new zzfu[i];
    }
}
