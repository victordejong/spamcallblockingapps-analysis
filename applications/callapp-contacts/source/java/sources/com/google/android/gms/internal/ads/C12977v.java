package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/v.class */
public final class C12977v implements Parcelable.Creator<zzaav> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaav createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 15) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaav(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaav[] newArray(int i) {
        return new zzaav[i];
    }
}
