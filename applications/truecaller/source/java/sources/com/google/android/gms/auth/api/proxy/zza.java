package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/zza.class */
public final class zza implements Parcelable.Creator<ProxyRequest> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final ProxyRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 == 4) {
                bArr = SafeParcelReader.m38885d(parcel, readInt);
            } else if (c2 == 5) {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            } else if (c2 != 1000) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ProxyRequest(i, str, i2, c, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
