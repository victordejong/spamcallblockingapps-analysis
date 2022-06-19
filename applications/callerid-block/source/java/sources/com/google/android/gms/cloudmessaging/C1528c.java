package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.cloudmessaging.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/c.class */
public final class C1528c implements Parcelable.Creator<CloudMessage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(m8312q) != 1) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                intent = (Intent) SafeParcelReader.m8324e(parcel, m8312q, Intent.CREATOR);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage[] newArray(int i) {
        return new CloudMessage[i];
    }
}
