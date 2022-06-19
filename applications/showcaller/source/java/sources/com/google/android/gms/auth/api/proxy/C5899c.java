package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.proxy.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/proxy/c.class */
public final class C5899c implements Parcelable.Creator<ProxyResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.m16959o(parcel, m16983C, PendingIntent.CREATOR);
            } else if (m16952v == 3) {
                i3 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 4) {
                bundle = SafeParcelReader.m16968f(parcel, m16983C);
            } else if (m16952v == 5) {
                bArr = SafeParcelReader.m16967g(parcel, m16983C);
            } else if (m16952v != 1000) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new ProxyResponse(i, i2, pendingIntent, i3, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
