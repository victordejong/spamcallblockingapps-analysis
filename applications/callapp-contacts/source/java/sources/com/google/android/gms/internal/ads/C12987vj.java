package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.vj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vj.class */
public final class C12987vj implements Parcelable.Creator<zzaww> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaww createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaww(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaww[] newArray(int i) {
        return new zzaww[i];
    }
}
