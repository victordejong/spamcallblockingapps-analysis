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
        int x = SafeParcelReader.m8305x(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(q) != 1) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                intent = (Intent) SafeParcelReader.m8324e(parcel, q, Intent.CREATOR);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage[] newArray(int i) {
        return new CloudMessage[i];
    }
}
