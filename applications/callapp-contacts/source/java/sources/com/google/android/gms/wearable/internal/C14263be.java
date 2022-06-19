package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.be */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/be.class */
public final class C14263be implements Parcelable.Creator<zzeg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeg createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        zzfo zzfoVar = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzfoVar = (zzfo) SafeParcelReader.m19143a(parcel, readInt, zzfo.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzeg(i, zzfoVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeg[] newArray(int i) {
        return new zzeg[i];
    }
}
