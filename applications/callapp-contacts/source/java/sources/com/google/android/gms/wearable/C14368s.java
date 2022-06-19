package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/s.class */
public final class C14368s implements Parcelable.Creator<Asset> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Asset createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        byte[] bArr = null;
        String str = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        Uri uri = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 4) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m19143a(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                uri = (Uri) SafeParcelReader.m19143a(parcel, readInt, Uri.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new Asset(bArr, str, parcelFileDescriptor, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Asset[] newArray(int i) {
        return new Asset[i];
    }
}
