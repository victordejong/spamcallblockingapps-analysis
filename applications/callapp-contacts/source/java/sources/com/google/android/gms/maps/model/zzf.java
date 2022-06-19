package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzf.class */
public final class zzf implements Parcelable.Creator<LatLng> {
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLng createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 2) {
                c = SafeParcelReader.m19130k(parcel, readInt);
            } else if (c3 != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c2 = SafeParcelReader.m19130k(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LatLng(c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLng[] newArray(int i) {
        return new LatLng[i];
    }
}
