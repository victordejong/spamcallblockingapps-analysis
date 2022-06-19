package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.ao */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ao.class */
public final class C14246ao implements Parcelable.Creator<zzdd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdd createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Uri uri = null;
        Bundle bundle = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                uri = (Uri) SafeParcelReader.m19143a(parcel, readInt, Uri.CREATOR);
            } else if (c == 4) {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdd(uri, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdd[] newArray(int i) {
        return new zzdd[i];
    }
}
