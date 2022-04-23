package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/proxy/b.class */
public final class b implements Parcelable.Creator<ProxyRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                j = SafeParcelReader.f(parcel, readInt);
            } else if (c2 == 4) {
                bArr = SafeParcelReader.p(parcel, readInt);
            } else if (c2 == 5) {
                bundle = SafeParcelReader.o(parcel, readInt);
            } else if (c2 != 1000) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new ProxyRequest(i, str, i2, j, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
