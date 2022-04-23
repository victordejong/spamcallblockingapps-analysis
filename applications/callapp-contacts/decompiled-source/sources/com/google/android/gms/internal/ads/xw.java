package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xw.class */
public final class xw implements Parcelable.Creator<zzazi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzazi createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        zzvt zzvtVar = null;
        zzvq zzvqVar = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                zzvtVar = (zzvt) SafeParcelReader.a(parcel, readInt, zzvt.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzvqVar = (zzvq) SafeParcelReader.a(parcel, readInt, zzvq.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzazi(str, str2, zzvtVar, zzvqVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzazi[] newArray(int i) {
        return new zzazi[i];
    }
}
