package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/zzb.class */
public final class zzb implements Parcelable.Creator<ProxyResponse> {
    @Override // android.os.Parcelable.Creator
    public final ProxyResponse createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.m38880i(parcel, readInt, PendingIntent.CREATOR);
            } else if (c == 3) {
                i3 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 4) {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            } else if (c == 5) {
                bArr = SafeParcelReader.m38885d(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new ProxyResponse(i, i2, pendingIntent, i3, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
