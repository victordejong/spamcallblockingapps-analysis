package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/barcode/zzj.class */
public final class zzj implements Parcelable.Creator<Barcode.GeoPoint> {
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final Barcode.GeoPoint createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 2) {
                c = SafeParcelReader.m38871r(parcel, readInt);
            } else if (c3 != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c2 = SafeParcelReader.m38871r(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Barcode.GeoPoint(c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.GeoPoint[] newArray(int i) {
        return new Barcode.GeoPoint[i];
    }
}
