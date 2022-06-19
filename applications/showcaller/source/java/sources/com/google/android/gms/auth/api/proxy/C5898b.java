package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.proxy.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/proxy/b.class */
public final class C5898b implements Parcelable.Creator<ProxyRequest> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 2) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 3) {
                c = SafeParcelReader.m16980F(parcel, m16983C);
            } else if (m16952v == 4) {
                bArr = SafeParcelReader.m16967g(parcel, m16983C);
            } else if (m16952v == 5) {
                bundle = SafeParcelReader.m16968f(parcel, m16983C);
            } else if (m16952v != 1000) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new ProxyRequest(i, str, i2, c, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
