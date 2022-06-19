package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.proxy.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/proxy/c.class */
public final class C11727c implements Parcelable.Creator<ProxyResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.m19143a(parcel, readInt, PendingIntent.CREATOR);
            } else if (c == 3) {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 4) {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            } else if (c == 5) {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new ProxyResponse(i, i2, pendingIntent, i3, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
