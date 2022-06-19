package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfs.class */
public final class zzcfs implements Parcelable.Creator<zzcfr> {
    @Override // android.os.Parcelable.Creator
    public final zzcfr createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        zzbdl zzbdlVar = null;
        zzbdg zzbdgVar = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 2) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                zzbdlVar = (zzbdl) SafeParcelReader.m38880i(parcel, readInt, zzbdl.CREATOR);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                zzbdgVar = (zzbdg) SafeParcelReader.m38880i(parcel, readInt, zzbdg.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcfr(str, str2, zzbdlVar, zzbdgVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcfr[] newArray(int i) {
        return new zzcfr[i];
    }
}
