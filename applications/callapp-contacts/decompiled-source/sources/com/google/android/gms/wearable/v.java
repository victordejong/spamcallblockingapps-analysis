package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/v.class */
public final class v implements Parcelable.Creator<PutDataRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PutDataRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Uri uri = null;
        Bundle bundle = null;
        byte[] bArr = null;
        long j = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                uri = (Uri) SafeParcelReader.a(parcel, readInt, Uri.CREATOR);
            } else if (c2 == 4) {
                bundle = SafeParcelReader.o(parcel, readInt);
            } else if (c2 == 5) {
                bArr = SafeParcelReader.p(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                j = SafeParcelReader.f(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new PutDataRequest(uri, bundle, bArr, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PutDataRequest[] newArray(int i) {
        return new PutDataRequest[i];
    }
}
