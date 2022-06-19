package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.proxy.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/proxy/b.class */
public final class C11726b implements Parcelable.Creator<ProxyRequest> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c2 == 4) {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            } else if (c2 == 5) {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            } else if (c2 != 1000) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new ProxyRequest(i, str, i2, c, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
