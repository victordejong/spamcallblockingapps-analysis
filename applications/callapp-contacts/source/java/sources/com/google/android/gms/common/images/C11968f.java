package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.images.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/f.class */
public final class C11968f implements Parcelable.Creator<WebImage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        Uri uri = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                uri = (Uri) SafeParcelReader.m19143a(parcel, readInt, Uri.CREATOR);
            } else if (c == 3) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new WebImage(i, uri, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}
