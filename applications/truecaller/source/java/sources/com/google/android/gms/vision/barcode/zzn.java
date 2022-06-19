package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/barcode/zzn.class */
public final class zzn implements Parcelable.Creator<Barcode.UrlBookmark> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.UrlBookmark createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Barcode.UrlBookmark(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.UrlBookmark[] newArray(int i) {
        return new Barcode.UrlBookmark[i];
    }
}
