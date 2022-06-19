package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ix */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ix.class */
public final class C12649ix implements Parcelable.Creator<zzajw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajw createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzajw(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajw[] newArray(int i) {
        return new zzajw[i];
    }
}
