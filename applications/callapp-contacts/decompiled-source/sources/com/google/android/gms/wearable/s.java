package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/s.class */
public final class s implements Parcelable.Creator<Asset> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Asset createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        byte[] bArr = null;
        String str = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        Uri uri = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                bArr = SafeParcelReader.p(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 4) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.a(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                uri = (Uri) SafeParcelReader.a(parcel, readInt, Uri.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new Asset(bArr, str, parcelFileDescriptor, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Asset[] newArray(int i) {
        return new Asset[i];
    }
}
