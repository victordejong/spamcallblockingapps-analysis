package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.um */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/um.class */
public final class C12963um implements Parcelable.Creator<zzavy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavy createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzavy(str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavy[] newArray(int i) {
        return new zzavy[i];
    }
}
