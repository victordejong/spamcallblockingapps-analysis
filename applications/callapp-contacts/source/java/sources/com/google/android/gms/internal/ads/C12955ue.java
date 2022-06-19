package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ue */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ue.class */
public final class C12955ue implements Parcelable.Creator<zzavt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        zzvq zzvqVar = null;
        String str = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                zzvqVar = (zzvq) SafeParcelReader.m19143a(parcel, readInt, zzvq.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzavt(zzvqVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt[] newArray(int i) {
        return new zzavt[i];
    }
}
