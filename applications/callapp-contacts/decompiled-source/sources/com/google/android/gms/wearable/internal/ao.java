package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ao.class */
public final class ao implements Parcelable.Creator<zzdd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdd createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Uri uri = null;
        Bundle bundle = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                uri = (Uri) SafeParcelReader.a(parcel, readInt, Uri.CREATOR);
            } else if (c2 == 4) {
                bundle = SafeParcelReader.o(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                bArr = SafeParcelReader.p(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdd(uri, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdd[] newArray(int i) {
        return new zzdd[i];
    }
}
