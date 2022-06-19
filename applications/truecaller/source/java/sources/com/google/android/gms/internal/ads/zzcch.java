package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcch.class */
public final class zzcch implements Parcelable.Creator<zzccg> {
    @Override // android.os.Parcelable.Creator
    public final zzccg createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        zzbdg zzbdgVar = null;
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                zzbdgVar = (zzbdg) SafeParcelReader.m38880i(parcel, readInt, zzbdg.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzccg(zzbdgVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzccg[] newArray(int i) {
        return new zzccg[i];
    }
}
