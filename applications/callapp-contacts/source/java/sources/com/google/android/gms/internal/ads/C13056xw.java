package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.xw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xw.class */
public final class C13056xw implements Parcelable.Creator<zzazi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzazi createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        zzvt zzvtVar = null;
        zzvq zzvqVar = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 2) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 3) {
                zzvtVar = (zzvt) SafeParcelReader.m19143a(parcel, readInt, zzvt.CREATOR);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzvqVar = (zzvq) SafeParcelReader.m19143a(parcel, readInt, zzvq.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzazi(str, str2, zzvtVar, zzvqVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzazi[] newArray(int i) {
        return new zzazi[i];
    }
}
