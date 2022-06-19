package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbda.class */
public final class zzbda implements Parcelable.Creator<zzbcz> {
    @Override // android.os.Parcelable.Creator
    public final zzbcz createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        zzbcz zzbczVar = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 4) {
                zzbczVar = (zzbcz) SafeParcelReader.m38880i(parcel, readInt, zzbcz.CREATOR);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.m38868u(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbcz(i, str, str2, zzbczVar, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbcz[] newArray(int i) {
        return new zzbcz[i];
    }
}
