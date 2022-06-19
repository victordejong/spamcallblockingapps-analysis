package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.cloudmessaging.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/c.class */
public final class C11780c implements Parcelable.Creator<CloudMessage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                intent = (Intent) SafeParcelReader.m19143a(parcel, readInt, Intent.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage[] newArray(int i) {
        return new CloudMessage[i];
    }
}
