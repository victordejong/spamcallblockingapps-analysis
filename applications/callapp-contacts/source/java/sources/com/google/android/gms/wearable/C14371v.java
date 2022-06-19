package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/v.class */
public final class C14371v implements Parcelable.Creator<PutDataRequest> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PutDataRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Uri uri = null;
        Bundle bundle = null;
        byte[] bArr = null;
        char c = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                uri = (Uri) SafeParcelReader.m19143a(parcel, readInt, Uri.CREATOR);
            } else if (c2 == 4) {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            } else if (c2 == 5) {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c = SafeParcelReader.m19135f(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new PutDataRequest(uri, bundle, bArr, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PutDataRequest[] newArray(int i) {
        return new PutDataRequest[i];
    }
}
