package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.cloudmessaging.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/c.class */
public final class C5957c implements Parcelable.Creator<CloudMessage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            if (SafeParcelReader.m16952v(m16983C) != 1) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                intent = (Intent) SafeParcelReader.m16959o(parcel, m16983C, Intent.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage[] newArray(int i) {
        return new CloudMessage[i];
    }
}
