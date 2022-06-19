package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zza.class */
public final class zza implements Parcelable.Creator<CloudMessage> {
    @Override // android.os.Parcelable.Creator
    public final CloudMessage createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                intent = (Intent) SafeParcelReader.m38880i(parcel, readInt, Intent.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CloudMessage[] newArray(int i) {
        return new CloudMessage[i];
    }
}
