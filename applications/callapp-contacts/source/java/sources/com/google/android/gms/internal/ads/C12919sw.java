package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.sw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sw.class */
public final class C12919sw implements Parcelable.Creator<zzaul> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaul createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaul(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaul[] newArray(int i) {
        return new zzaul[i];
    }
}
