package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.as */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/as.class */
public final class C14250as implements Parcelable.Creator<zzdk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdk createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        zzah zzahVar = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzahVar = (zzah) SafeParcelReader.m19143a(parcel, readInt, zzah.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdk(i, zzahVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdk[] newArray(int i) {
        return new zzdk[i];
    }
}
